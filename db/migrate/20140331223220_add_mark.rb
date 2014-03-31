class AddMark < ActiveRecord::Migration
  def change
    add_column :tasks, :mark, :boolean
  end
end
