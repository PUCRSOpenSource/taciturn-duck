json.array!(@curriculos) do |curriculo|
  json.extract! curriculo, :id, :curso_id, :codigo
  json.url curriculo_url(curriculo, format: :json)
end
