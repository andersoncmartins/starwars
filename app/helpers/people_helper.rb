module PeopleHelper

  def description(person)
    starship_names = person.starships.map{|s| s.name }.join(" e ")
    "Olá! Meu nome é #{person.name}. Sou um #{I18n.t("species.#{person.specie_name}")}, peso #{person.mass} Kg, nasci em #{person.planet_name} no ano de #{person.birth_year} e já pilotei #{starship_names}."
  end
end
