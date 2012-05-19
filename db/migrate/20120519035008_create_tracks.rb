class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :event_id
      t.string :name
      t.string :token

      t.timestamps
    end
  end
end
