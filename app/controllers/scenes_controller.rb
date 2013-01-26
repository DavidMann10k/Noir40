class ScenesController < ApplicationController
  
  def index
    @scenes = Scene.all
  end

  def show
    @scene = Scene.find(params[:id])
  end

  def new
    @scene = Scene.new
  end

  def create
    @scene = Scene.new(params[:scene])
    if @scene.save
      redirect_to @scene, :notice => "Successfully created scene."
    else
      render :action => 'new'
    end
  end

  def edit
    @scene = Scene.find(params[:id])
  end

  def update
    @scene = Scene.find(params[:id])
    if @scene.update_attributes(params[:scene])
      redirect_to @scene, :notice  => "Successfully updated scene."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @scene = Scene.find(params[:id])
    @scene.destroy
    redirect_to scenes_url, :notice => "Successfully destroyed scene."
  end
end
