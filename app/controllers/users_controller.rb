class UsersController < ApplicationController
  load_and_authorize_resource
  
  def index
  end

  def show
  end

  def new_game
    cu = current_user

    scene_states = UserSceneState.find_all_by_user_id(cu)
    if !scene_states.empty?
      scene_states.each do |s|
        s.destroy
      end
    end


    object_states = UserObjectState.find_all_by_user_id(cu)
    if !scene_states.empty?
      object_states.each do |o|
        o.destroy
      end
    end

    Scene.all.each do |s|
      UserSceneState.create(user_id: cu.id, scene_id: s.id, searchable: true)
    end

    cu.beats = ENV['USER_BEATS'] || 17
    cu.save

    SceneObject.all.each do |so|
      if so.obtainable?
        UserObjectState.create(user_id: cu.id, scene_object_id: so.id, visible: false)
      end
    end

    redirect_to scene_path(11)
  end
end
