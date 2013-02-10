class AddLabelToNection < ActiveRecord::Migration
  def change
    add_column :nections, :label, :string
  end
end
