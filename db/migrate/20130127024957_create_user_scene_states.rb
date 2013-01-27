class CreateUserSceneStates < ActiveRecord::Migration
  def change
    create_table(:user_scene_states) do |t|
      t.integer :user_id
      t.integer :scene_id
      t.boolean :searchable
    end
  end
end
