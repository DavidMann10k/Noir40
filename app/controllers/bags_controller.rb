class BagsController < ApplicationController
  def index
    @bags = Bag.all
  end

  def show
    @bag = Bag.find(params[:id])
  end

  def new
    @bag = Bag.new
  end

  def create
    @bag = Bag.new(params[:bag])
    if @bag.save
      redirect_to @bag, :notice => "Successfully created bag."
    else
      render :action => 'new'
    end
  end

  def edit
    @bag = Bag.find(params[:id])
  end

  def update
    @bag = Bag.find(params[:id])
    if @bag.update_attributes(params[:bag])
      redirect_to @bag, :notice  => "Successfully updated bag."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @bag = Bag.find(params[:id])
    @bag.destroy
    redirect_to bags_url, :notice => "Successfully destroyed bag."
  end

  def add_item
    @scene_object = SceneObject.find(params[item_id])
    session[params[:item]] = 
  end
end
