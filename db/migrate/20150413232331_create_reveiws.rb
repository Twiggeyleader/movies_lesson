class CreateReveiws < ActiveRecord::Migration
  def change
    create_table :reveiws do |t|
      t.text :body
      t.integer :score
      t.references :moive, index: true

      t.timestamps null: false
    end
    add_foreign_key :reveiws, :moives
  end
end
