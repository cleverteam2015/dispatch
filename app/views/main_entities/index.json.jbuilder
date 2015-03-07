json.array!(@main_entities) do |main_entity|
  json.extract! main_entity, :id, :name, :main_name, :creation_date, :status, :address
  json.url main_entity_url(main_entity, format: :json)
end
