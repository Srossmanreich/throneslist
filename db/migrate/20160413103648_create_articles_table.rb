class CreateArticlesTable < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :email
      t.string :random_string

      t.belongs_to :category, index:true

      t.timestamps
    end
  end
end
