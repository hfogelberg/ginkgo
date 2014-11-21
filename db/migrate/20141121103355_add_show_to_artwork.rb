class AddShowToArtwork < ActiveRecord::Migration
  def change
    add_column :artworks, :show, :boolean, :default=>:true
  end
end
