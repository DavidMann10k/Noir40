class UsersController < ApplicationController
  load_and_authorize_resource
  
  def index
  end

  def show
  end

  def new_game
    Scene.all.each do |s|
      UserSceneState.create(user_id: current_user.id, scene_id: s.id, searchable: true)
    end
    redirect_to scene_path(11)
  end
end
