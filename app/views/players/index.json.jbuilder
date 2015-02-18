json.array!(@players) do |player|
  json.extract! player, :id, :email, :name, :username, :points, :active
  json.url player_url(player, format: :json)
end
