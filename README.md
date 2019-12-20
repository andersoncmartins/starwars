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
- Eu pesquisei um pouco sobre as gems do Star Wars para ruby, mas resolvi não utilizá-los. Achei as gems um pouco antigas.
- Algumas gems não respeitavam alguns dos propósitos. Ex: A gem 'swapi' com o método get_all people retornava apenas a primeira página de pessoas.
