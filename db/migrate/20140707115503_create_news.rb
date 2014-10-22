class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :header
      t.string :body
      t.string :image

      t.timestamps
    end
  end
end
