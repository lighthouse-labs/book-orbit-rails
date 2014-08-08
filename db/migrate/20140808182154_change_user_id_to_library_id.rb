class ChangeUserIdToLibraryId < ActiveRecord::Migration
  def change
    rename_column :bookmarks_libraries, :user_id, :library_id
  end
end
