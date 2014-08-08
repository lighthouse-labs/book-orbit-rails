class ChangeBookmarksUsersToBookmarksLibraries < ActiveRecord::Migration
  def up
    rename_table :bookmarks_users, :bookmarks_libraries
  end

  def down
    rename_table :bookmarks_libraries, :bookmarks_users
  end
end
