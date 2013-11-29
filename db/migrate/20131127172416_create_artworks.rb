class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :name
      t.text :description
      t.integer :height
      t.integer :width
      t.integer :depth
      t.references :Status, index: true
      t.references :Gallery, index: true
      t.references :Technique, index: true

      t.timestamps
    end
  end
end
