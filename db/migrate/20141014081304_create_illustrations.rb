class CreateIllustrations < ActiveRecord::Migration
  def change
    create_table :illustrations do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
