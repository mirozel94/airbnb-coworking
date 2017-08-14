class CreateSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :spaces do |t|
      t.string :address
      t.string :name
      t.string :description
      t.string :picture
      t.string :service
      t.integer :capacity
      t.integer :rating
      t.integer :price
      t.boolean :availability
      t.datetime :date

      t.timestamps
    end
  end
end
