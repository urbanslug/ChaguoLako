json.array!(@options) do |option|
  json.extract! option, :name, :poll_id
  json.url option_url(option, format: :json)
end
