class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :hashtag
      t.float :latitude
      t.float :longitude
      t.string :organizer
      
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
