# README

* Ruby - 2.6.3p62
* Rails - 6.0.2.1

* Plataforma banco de Dados - Sqlite
* Nome da base de dados- development.sqlite
 
* Instruções para iniciar projeto:
- bundle install
- rails db:migrate
- rails db:seed

* Como rodar os Testes:
- Geral: bundle exec rspec spec
- Models: bundle exec rspec spec/models
- Controllers: bundle exec rspec spec/controllers

*OBSERVAÇÕES
- Eu pesquisei um pouco sobre a gem 'Swapi', mas resolvi não utilizá-lo por ser uma gem um pouco antiga.
- Não respeitava alguns dos propósitos. Ex: get_all people retornava apenas a primeira página de pessoas.
