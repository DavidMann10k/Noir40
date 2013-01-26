class ScenesController < ApplicationController
  load_and_authorize_resource
  
  def index
  end

  def show
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
    redirect_to scenes_url, :notice => "Successfully destroyed scene."
  end

  def move
    @scene = Scene.find params[:scene_id]

    @scene.nections.each do |n|
      if n.direction == params[:direction]
        redirect_to scene_path(n.adjacent)
        ##use a heart
      end
    end
  end
end
