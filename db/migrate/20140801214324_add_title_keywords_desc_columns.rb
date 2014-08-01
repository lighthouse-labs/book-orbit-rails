class AddTitleKeywordsDescColumns < ActiveRecord::Migration
  def change
    add_column :bookmarks, :title, :string
    add_column :bookmarks, :keywords, :string
    add_column :bookmarks, :desc, :string
  end
end
