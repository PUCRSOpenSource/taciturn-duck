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
