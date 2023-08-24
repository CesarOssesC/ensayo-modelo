json.extract! precio, :id, :nombre, :precio_pesos, :precio_uf, :created_at, :updated_at
json.url precio_url(precio, format: :json)
