class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :Title
      t.string :ISBN
      t.integer :AuthorID
      t.timestamps
    end
  end
end
