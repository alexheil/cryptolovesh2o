class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.references :category
      t.string :title
      t.string :image
      t.text :description
      t.string :readtime
      t.text :content
      t.text :tldr
      t.string :slug

      t.timestamps
    end
  end
end
