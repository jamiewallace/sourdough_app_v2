class CreateMessagesTable < ActiveRecord::Migration
  def change
    create_table(:messages) do |t|
      t.integer   :sender_id
      t.integer   :recipient_id
      t.text      :content
      t.boolean   :is_read, default: false
      t.boolean   :is_archived, default: false
      
      t.timestamps
    end
  end
end
