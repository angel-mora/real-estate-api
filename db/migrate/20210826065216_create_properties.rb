class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :name
      # do I ever need to use text instead of string?
      t.string :type # options: house, department, land, commercial_ground
      t.text :street
      t.string :external_number
      t.string :internal_number
      t.string :neighborhood
      t.string :city
      t.string :country # 2 chars ISO 3166-Alpha2
      t.integer :rooms
      t.integer :bathrooms
      t.text :comments

      t.timestamps
    end
  end
end
