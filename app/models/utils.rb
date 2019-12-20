class Utils
  require 'open-uri'
  BASE_URL = 'https://swapi.co/api'

  def self.save_all_people
    type = 'people'
    pages = self.pages(type)
    pages.each do |page|
      results = self.response(type, page)['results']
      results.each do |r|      
        Person.create(name: r['name'], height: r['height'].to_i, mass: r['mass'].to_i, skin_color: r['skin_color'], eye_color: r['eye_color'], birth_year: r['birth_year'], gender: r['gender'], homeworld: r['homeworld'], created_at: r['created'], updated_at: r['edited'], url: r['url'])
      end
    end
  end

  def self.save_all_planets
    type = 'planets'
    pages = self.pages(type)
    pages.each do |page|
      results = self.response(type, page)['results']
      results.each do |r|
        Planet.create(name: r['name'], rotation_period: r['rotation_period'].to_i, orbital_period: r['orbital_period'].to_i, diameter: r['diameter'].to_i, climate: r['climate'], gravity: r['gravity'], terrain: r['terrain'], surface_water: r['surface_water'].to_i, population: r['population'].to_i, created_at: r['created'], updated_at: r['edited'], url: r['url'])
      end
    end
  end

  def self.save_all_species
    type = 'species'
    pages = self.pages(type)
    pages.each do |page|
      results = self.response(type, page)['results']
      results.each do |r|      
        specie = Specie.create(name: r['name'], classification: r['classification'], designation: r['designation'], average_height: r['average_height'], skin_colors: r['skin_colors'], hair_colors: r['hair_colors'], eye_colors: r['eye_colors'], average_lifespan: r['average_lifespan'], homeworld: r['homeworld'], created_at: r['created'], updated_at: r['edited'], url: r['url'])
      end
    end
  end

  def self.save_all_starships
    type = 'starships'
    pages = self.pages(type)
    pages.each do |page|
      results = self.response(type, page)['results']
      results.each do |r|      
        Starship.create(name: r['name'], model: r['model'], manufacturer: r['manufacturer'], length: r['length'].to_i, max_atmosphering_speed: r['max_atmosphering_speed'], crew: r['crew'], passengers: r['passengers'], cargo_capacity: r['cargo_capacity'].to_i, consumables: r['consumables'], hyperdrive_rating: r['hyperdrive_rating'].to_f, mglt: r['mglt'], starship_class: r['starship_class'], created_at: r['created'], updated_at: r['edited'], url: r['url'])
      end
    end
  end

  def self.save_people_species
    type = 'people'
    pages = self.pages(type)
    pages.each do |page|
      results = self.response(type, page)['results']
      results.each do |r|      
        person = Person.find_by(name: r['name'])
        specie = Specie.find_by(url: r['species'].first)
        person.update(specie: specie)
      end
    end
  end

  def self.save_people_planets
    type = 'people'
    pages = self.pages(type)
    pages.each do |page|
      results = self.response(type, page)['results']
      results.each do |r|      
        person = Person.find_by(name: r['name'])
        planet = Planet.find_by(url: r['homeworld'])
        person.update(planet: planet)
      end
    end
  end

  def self.save_people_starships
    type = 'people'
    pages = self.pages(type)
    pages.each do |page|
      results = self.response(type, page)['results']
      results.each do |r|      
        person = Person.find_by(name: r['name'])
        starships = Starship.where(url: r['starships'])
        person.starships = starships
        person.save
      end
    end
  end

  def self.save_planets_species
    type = 'species'
    pages = self.pages(type)
    pages.each do |page|
      results = self.response(type, page)['results']
      results.each do |r|      
        specie = Specie.find_by(name: r['name'])
        planet = Planet.find_by(url: r['homeworld'])
        specie.update(planet: planet)
      end
    end
  end

  private   

  def self.count(type)
    self.response(type, '1')['count']
  end

  def self.response(type, page)
    JSON.load(open("#{BASE_URL}/#{type}/?page=#{page}"))
  end

  def self.pages(type)
    pages = []
    count = self.count(type)
    pages_left = ((count - 1) / 10).ceil
    for i in 0..pages_left do
      pages << i + 1     
    end
    pages
  end

end