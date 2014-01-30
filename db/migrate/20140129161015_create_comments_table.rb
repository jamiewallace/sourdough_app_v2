class CreateCommentsTable < ActiveRecord::Migration
  def up
    create_table :comments
    add_column :comments, :post_id, :integer
    add_column :comments, :text, :text
    add_column :comments, :commenter, :string
    add_timestamps :comments
  end

  def down
    drop_table :comments
  end
end
