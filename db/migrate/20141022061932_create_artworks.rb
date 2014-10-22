class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :name
      t.text :description
      t.integer :height
      t.integer :width
      t.references :Collection, index: true
      t.references :Technique, index: true
      t.references :Material, index: true
      t.integer :price
      t.boolean :for_sale
      t.string :image

      t.timestamps
    end
  end
end
