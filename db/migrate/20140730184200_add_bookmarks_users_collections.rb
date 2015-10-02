class AddBookmarksUsersCollections < ActiveRecord::Migration
  def change
    create_table :bookmarks_users_collections do |t|
      t.belongs_to :bookmarks_user
      t.belongs_to :collection

      t.timestamps
    end
  end
end