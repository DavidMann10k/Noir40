class UsersController < ApplicationController
  load_and_authorize_resource
  
  def index
  end

  def show
  end

  def new_game
    SceneObject.searchables.each do |o|
      #session["object_#{o.id}"] = 
    end
  end
end
