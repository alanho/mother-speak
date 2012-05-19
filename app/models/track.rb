class Track < ActiveRecord::Base
  attr_accessible :event_id, :name, :token
  
  belongs_to :event
end
