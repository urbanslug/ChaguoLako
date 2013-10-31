json.array!(@polls) do |poll|
  json.extract! poll, :question, :start_date, :deadline, :admin_id
  json.url poll_url(poll, format: :json)
end
