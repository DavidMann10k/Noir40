class CreateUserObjectStates < ActiveRecord::Migration
  def change
    create_table :user_object_states do |t|
      t.integer :user_id
      t.integer :scene_object_id
      t.boolean :visible

      t.timestamps
    end
  end
end
