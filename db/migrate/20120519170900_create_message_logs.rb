class CreateMessageLogs < ActiveRecord::Migration
  def change
    create_table :message_logs do |t|
      t.integer :track_id
      t.text :message

      t.timestamps
    end
  end
end
