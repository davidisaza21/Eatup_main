json.array!(@eatup_tickets) do |eatup_ticket|
  json.extract! eatup_ticket, :id, :ticket_number, :eatup_user_id, :eatup_event_id
  json.url eatup_ticket_url(eatup_ticket, format: :json)
end
