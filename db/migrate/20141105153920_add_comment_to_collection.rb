class AddCommentToCollection < ActiveRecord::Migration
  def change
    add_column :collections, :comment, :text
  end
end
