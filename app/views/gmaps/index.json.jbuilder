json.array!(@gmaps) do |gmap|
  json.extract! gmap, :id, :name, :address, :longitude, :latitude, :gmaps
  json.url gmap_url(gmap, format: :json)
end
