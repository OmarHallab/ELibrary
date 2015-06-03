class CreateReadingLists < ActiveRecord::Migration
  def change
    create_table :reading_lists do |t|
      t.references :user, index: true
      t.string :title

      t.timestamps null: false
    end
    add_foreign_key :reading_lists, :users
  end
end
