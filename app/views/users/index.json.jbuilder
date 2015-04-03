json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :phone, :username, :business_unit, :role, :status, :updated_by, :created_by
  json.url user_url(user, format: :json)
end
