json.array!(@voters) do |voter|
  json.extract! voter, :email, :username, :password, :phone, :approved
  json.url voter_url(voter, format: :json)
end
