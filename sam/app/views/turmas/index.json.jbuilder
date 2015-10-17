json.array!(@turmas) do |turma|
  json.extract! turma, :id, :numero, :horario, :disciplina_id
  json.url turma_url(turma, format: :json)
end
