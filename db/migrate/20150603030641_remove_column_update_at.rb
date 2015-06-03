class RemoveColumnUpdateAt < ActiveRecord::Migration
  def change
  	remove_column :items, :updated_at
  end
end
