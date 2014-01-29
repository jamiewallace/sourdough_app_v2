class CreatePostsTable < ActiveRecord::Migration
  def up
    create_table :posts
    add_column :posts, :title, :string
    add_column :posts, :text, :text
    add_column :posts, :user_id, :integer
    add_timestamps :posts
  end

  def down
    drop_table :posts
  end
end
