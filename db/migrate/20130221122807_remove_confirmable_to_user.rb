class RemoveConfirmableToUser < ActiveRecord::Migration
  def up
    remove_column :users, :confirmable
      end

  def down
    add_column :users, :confirmable, :string
  end
end
