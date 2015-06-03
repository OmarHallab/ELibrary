class CreateArticleReadingLists < ActiveRecord::Migration
  def change
    create_table :article_reading_lists do |t|
      t.references :article, index: true
      t.references :reading_list, index: true
      t.string :state
      t.boolean :active

      t.timestamps null: false
    end
    add_foreign_key :article_reading_lists, :articles
    add_foreign_key :article_reading_lists, :reading_lists
  end
end
