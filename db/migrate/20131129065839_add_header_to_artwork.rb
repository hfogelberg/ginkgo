class AddHeaderToArtwork < ActiveRecord::Migration
  def change
    add_column :artworks, :header, :string
  end
end
