class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :display_name
      t.string :title
      t.string :content
      t.string :email
      t.string :slug

      t.timestamps
    end
  end
end
