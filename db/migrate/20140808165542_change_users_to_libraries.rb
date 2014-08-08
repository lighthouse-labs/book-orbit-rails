class ChangeUsersToLibraries < ActiveRecord::Migration
  def up
    rename_table :users, :libraries
  end

  def down
    rename_table :libraries, :users
  end
end
