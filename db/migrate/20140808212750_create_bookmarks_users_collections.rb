class CreateBookmarksUsersCollections < ActiveRecord::Migration
  def change
    create_table :bookmarks_users_collections do |t|

      t.timestamps
    end
  end
end
