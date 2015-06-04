class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :online_location
      t.string :author_name

      t.timestamps null: false
    end
  end
end
