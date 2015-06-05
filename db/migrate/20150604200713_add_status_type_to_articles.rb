class AddStatusTypeToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :status_type, :string
  end
end
