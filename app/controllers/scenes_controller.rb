class ScenesController < ApplicationController
  load_and_authorize_resource
  
  def index
  end

  def show
    redirect_to "/death" if current_user.beats <= 0
    redirect_to "/revenge" if @scene.end? && current_user.gun?
    redirect_to "/killed" if @scene.end? && !current_user.gun?


  end

  def new
  end

  def create
    if @scene.save
      redirect_to @scene, :notice => "Successfully created scene."
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @scene.update_attributes(params[:scene])
      redirect_to @scene, :notice  => "Successfully updated scene."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @scene.destroy
    redirect_to scenes_url, :notice => "Successfully destroyed scene.
"  end

  def move
    @scene = Scene.find params[:scene_id]

    @scene.nections.each do |n|
      if n.direction == params[:direction]
        c = current_user
        c.beats -= 1
        c.save
        redirect_to scene_path(n.adjacent)
      end
    end
  end

  def search
    @scene = Scene.find params[:scene_id]
    uss = current_user.user_scene_states.find_by_scene_id(params[:scene_id])
    
    uss.searchable = false
    uss.save

    cu = current_user
    cu.beats -= 1
    cu.save

    if !SceneObject.find_all_by_scene_id(@scene.id).empty?
      
      current_user.user_object_states.each do |uos|
        if uos.scene_object && uos.scene_object.obtainable?
          flash[:notice] = "You found THE GUN!"
          u = current_user
          u.gun = true
          u.save
          uos.destroy
        else
          flash[:notice] = "You found nothing"
        end
      end
    end
          

    redirect_to scene_path(@scene.id)
  end
end
