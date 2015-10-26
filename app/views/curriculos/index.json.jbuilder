json.array!(@curriculos) do |curriculo|
  json.extract! curriculo, :id, :codigo, :curso_id
  json.url curriculo_url(curriculo, format: :json)
end
