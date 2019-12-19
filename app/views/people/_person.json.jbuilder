json.extract! person, :id, :name, :height, :mass, :hair_color, :skin_color, :eye_color, :birth_year, :gender, :homeworld, :url, :created_at, :updated_at
json.url person_url(person, format: :json)
