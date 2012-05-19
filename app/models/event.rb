class Event < ActiveRecord::Base
  attr_accessible :hashtag, :latitude, :longitude, :name, :organizer
  
  has_many :tracks
  
  def as_json(options={})
    super(:only => [:name, :hashtag, :organizer])
  end
end
