json.extract! connection, :id, :title, :unit, :created_at, :updated_at
json.url connection_url(connection, format: :json)
