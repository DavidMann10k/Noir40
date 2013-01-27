class CreateBags < ActiveRecord::Migration
  def change
    add_column :scene_objects, :user_id, :integer
  end
end
