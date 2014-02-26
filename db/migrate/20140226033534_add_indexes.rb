class AddIndexes < ActiveRecord::Migration

  def up
    add_index :comments, :post_id
    add_index :replies, :comment_id
  end

  def down
  end
end
