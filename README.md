# README

* Ruby - 2.6.3p62
* Rails - 6.0.2.1

* Plataforma banco de Dados - Sqlite
* Nome da base de dados- development.sqlite
 
* Instruções para iniciar projeto:
- bundle install
AND
- rails db:create
- rails db:migrate
- rails db:seed
OR 
- rails db:setup

* Como rodar os Testes:
- Geral: bundle exec rspec spec
- Models: bundle exec rspec spec/models
- Controllers: bundle exec rspec spec/controllers