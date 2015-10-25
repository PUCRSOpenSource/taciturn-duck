json.array!(@pre_requisitos) do |pre_requisito|
  json.extract! pre_requisito, :id, :disciplina_id, :pre_requisito_id, :create, :destroy
  json.url pre_requisito_url(pre_requisito, format: :json)
end
