json.array!(@roles) do |role|
  json.extract! role, :id, :name, :status, :created_by, :updated_by, :description
  json.url role_url(role, format: :json)
end
