# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
curso_list = [
	[ "Administração: Administração de Empresas","Bacharelado"],
	[ "Administração: Comércio Internacional","Bacharelado"],
	[ "Administração: Empreendedorismo e Sucessão","Bacharelado"],
	[ "Administração: Gestão de Tecnologia da Informação","Bacharelado"],
	[ "Administração: Marketing","Bacharelado"],
	[ "Arquitetura e Urbanismo","Bacharelado"],
	[ "Ciência da Computação","Bacharelado"],
	[ "Ciência e Inovação em Alimentos","Bacharelado"],
	[ "Ciências Aeronáuticas","Bacharelado"],
	[ "Ciências Biológicas","Bacharelado/Licenciatura"],
	[ "Ciências Contábeis - Controladoria e Finanças","Bacharelado"],
	[ "Ciências Econômicas","Bacharelado"],
	[ "Ciências Sociais","Licenciatura/Bacharelado"],
	[ "Comunicação Social: Jornalismo","Bacharelado"],
	[ "Comunicação Social: Publicidade e Propaganda","Bacharelado"],
	[ "Comunicação Social: Relações Públicas","Bacharelado"],
	[ "Direito","Bacharelado"],
	[ "Educação Física","Bacharelado/Licenciatura"],
	[ "Enfermagem","Bacharelado"],
	[ "Engenharia Civil","Bacharelado"],
	[ "Engenharia de Computação","Bacharelado"],
	[ "Engenharia de Controle e Automação","Bacharelado"],
	[ "Engenharia de Software","Bacharelado"],
	[ "Engenharia Elétrica","Bacharelado"],
	[ "Engenharia Mecânica","Bacharelado"],
	[ "Engenharia de Produção","Bacharelado"],
	[ "Engenharia Química","Bacharelado"],
	[ "Escrita Criativa","Tecnólogo"],
	[ "Farmácia","Bacharelado"],
	[ "Filosofia","Bacharelado/Licenciatura"],
	[ "Física","Licenciatura"],
	[ "Física - Formação em Física Médica","Bacharelado"],
	[ "Física - Formação em Geofísica","Bacharelado"],
	[ "Fisioterapia","Bacharelado"],
	[ "Gastronomia","Tecnólogo"],
	[ "Geografia","Bacharelado/Licenciatura"],
	[ "Gestão de Turismo","Tecnólogo"],
	[ "História","Bacharelado/Licenciatura"],
	[ "Hotelaria","Tecnólogo"],
	[ "Letras","Licenciatura"],
	[ "Matemática","Licenciatura"],
	[ "Matemática - Formação em Matemática Empresarial","Bacharelado"],
	[ "Medicina","Bacharelado"],
	[ "Nutrição","Bacharelado"],
	[ "Odontologia","Bacharelado"],
	[ "Pedagogia","Licenciatura"],
	[ "Produção Audiovisual / Cinema e Vídeo","Tecnólogo"],
	[ "Psicologia","Bacharelado"],
	[ "Química","Licenciatura"],
	[ "Química - Formação em Química Industrial","Bacharelado"],
	[ "Serviço Social","Bacharelado"],
	[ "Sistemas de Informação","Bacharelado"],
	[ "Teologia","Bacharelado"]
]

curso_list.each do |curso|
	Curso.create(nome: curso[0], grau:curso[1])
end

disciplina_list = [
	["Matemática Discreta (Cc)",60],
	["Cálculo A",60],
	["Geometria Analitica",30],
	["Algoritmos e Programacao I",90],
	["Introducao A Ciencia da Computacao",60],
	["Cálculo B",60],
	["Algebra Matricial",30],
	["Algoritmos e Programacao II",90],
	["Logica para Computacao",60],
	["Linguagens Formais",60],
	["Organizacao e Arquit. de Computadores I",60],
	["Modelagem de Software",60],
	["Laboratorio de Banco de Dados I",30],
	["Algoritmos e Programacao III",90],
	["Paradigmas de Linguagens de Programacao",60],
	["Teoria da Computacao",60],
	["Organizacao e Arquit. de Computadores II",60],
	["Programacao para Software Basico",60],
	["Modelagem Conceit. e Proj. de Banco Dados",60],
	["Complexidade e Otimizacao",60],
	["Técnicas de Programação",60],
	["Computacao Grafica I",60],
	["Organizacao e Arquit. de Computadores III",60],
	["Compiladores",60],
	["Métodos Estatísticos",60],
	["Gerencia de Projetos de Software",60],
	["Projeto de Interfaces",30],
	["Metodos Formais para Computacao",60],
	["Computacao Grafica II",30],
	["Sistemas Operacionais (Cc)",60],
	["Redes de Computadores I",60],
	["Desenvolvimento de Sistemas",60],
	["Implementacao de Banco de Dados",60],
	["Entretenimento Digital",30],
	["Inteligencia Artificial",60],
	["Metodos Computacionais (Cc)",60],
	["Programacao de Perifericos (Cc)",30],
	["Redes de Computadores II",60],
	["Laboratorio de Redes de Computadores",30],
	["Humanismo e Cultura Religiosa",60],
	["Trabalho de Conclusao I",60],
	["Avaliacao de Desempenho de Sistemas",60],
	["Redes de Computadores III",60],
	["Programacao Paralela",30],
	["Ética e Filosofia da Ciência",60],
	["Empreendimentos Empresariais",60],
	["Trabalho de Conclusao II",60],
	["Sistemas Embarcados",60],
	["Programacao Distribuida",60]
]

disciplina_list.each do |disciplina|
	Disciplina.create(nome: disciplina[0], creditos:disciplina[1])
end
