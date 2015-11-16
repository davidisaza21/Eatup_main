json.array!(@eatup_users) do |eatup_user|
  json.extract! eatup_user, :id, :email, :name, :password
  json.url eatup_user_url(eatup_user, format: :json)
end
