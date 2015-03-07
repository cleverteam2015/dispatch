json.array!(@dealers) do |dealer|
  json.extract! dealer, :id, :name, :main_name, :creation_date, :status, :address, :parent_id
  json.url dealer_url(dealer, format: :json)
end
