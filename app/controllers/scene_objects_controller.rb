class SceneObjectsController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
  end

  def create
    if @scene_object.save
      redirect_to @scene_object, :notice => "Successfully created scene object."
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @scene_object.update_attributes(params[:scene_object])
      redirect_to @scene_object, :notice  => "Successfully updated scene object."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @scene_object.destroy
    redirect_to scene_objects_url, :notice => "Successfully destroyed scene object."
  end
end
