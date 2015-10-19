json.array!(@turmas) do |turma|
  json.extract! turma, :id, :horario, :numero, :disciplina_id
  json.url turma_url(turma, format: :json)
end
