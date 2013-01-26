class NectionsController < ApplicationController
  load_and_authorize_resource
  def index
  end

  def show
  end

  def new
  end

  def create
    @nection = Nection.new(params[:nection])
    
    if @nection.save
      redirect_to @nection, :notice => "Successfully created nection."
    else
      render :action => 'new'
    end
  end

  def edit
    @nection = Nection.find(params[:id])
  end

  def update
    @nection = Nection.find(params[:id])
    if @nection.update_attributes(params[:nection])
      redirect_to @nection, :notice  => "Successfully updated nection."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @nection = Nection.find(params[:id])
    @nection.destroy
    redirect_to nections_url, :notice => "Successfully destroyed nection."
  end
end
