class CreateBookmarksUsers < ActiveRecord::Migration
  def change
    create_table :bookmarks_users do |t|
      t.belongs_to :user
      t.belongs_to :bookmark

      t.timestamps
    end
  end
end
