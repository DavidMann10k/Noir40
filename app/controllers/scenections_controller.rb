class ScenectionsController < ApplicationController
  def index
    @scenections = Scenection.all
  end

  def show
    @scenection = Scenection.find(params[:id])
  end

  def new
    @scenection = Scenection.new
  end

  def create
    @scenection = Scenection.new(params[:scenection])
    if @scenection.save
      redirect_to @scenection, :notice => "Successfully created scenection."
    else
      render :action => 'new'
    end
  end

  def edit
    @scenection = Scenection.find(params[:id])
  end

  def update
    @scenection = Scenection.find(params[:id])
    if @scenection.update_attributes(params[:scenection])
      redirect_to @scenection, :notice  => "Successfully updated scenection."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @scenection = Scenection.find(params[:id])
    @scenection.destroy
    redirect_to scenections_url, :notice => "Successfully destroyed scenection."
  end
end
