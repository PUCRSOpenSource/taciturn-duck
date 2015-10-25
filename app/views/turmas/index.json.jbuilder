json.array!(@turmas) do |turma|
  json.extract! turma, :id, :horario, :disciplina_id
  json.url turma_url(turma, format: :json)
end
