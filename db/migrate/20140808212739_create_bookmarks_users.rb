class CreateBookmarksUsers < ActiveRecord::Migration
  def change
    create_table :bookmarks_users do |t|

      t.timestamps
    end
  end
end
