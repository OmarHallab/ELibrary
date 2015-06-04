class CreateOnlineArticles < ActiveRecord::Migration
  def change
    create_table :online_articles do |t|
      t.string :Title
      t.text :Description
      t.string :Online_path
      t.string :Author

      t.timestamps null: false
    end
  end
end
