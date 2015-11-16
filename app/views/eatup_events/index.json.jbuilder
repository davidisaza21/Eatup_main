json.array!(@eatup_events) do |eatup_event|
  json.extract! eatup_event, :id, :name, :chef, :date, :price, :description
  json.url eatup_event_url(eatup_event, format: :json)
end
