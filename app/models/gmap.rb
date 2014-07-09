class Gmap < ActiveRecord::Base
  geocoded_by :address
  # , :latitude, :longitude, :name
  after_validation :geocode
 
  # def gmaps4rails_address
  #     address
  # end
end
