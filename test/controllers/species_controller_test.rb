require 'test_helper'

class SpeciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @species = species(:one)
  end

  test "should get index" do
    get species_url
    assert_response :success
  end

  test "should get new" do
    get new_species_url
    assert_response :success
  end

  test "should create species" do
    assert_difference('Specie.count') do
      post species_url, params: { species: { average_height: @species.average_height, average_lifespan: @species.average_lifespan, classification: @species.classification, designation: @species.designation, eye_colors: @species.eye_colors, hair_colors: @species.hair_colors, homeworld: @species.homeworld, language: @species.language, name: @species.name, skin_colors: @species.skin_colors, url: @species.url } }
    end

    assert_redirected_to species_url(Specie.last)
  end

  test "should show species" do
    get species_url(@species)
    assert_response :success
  end

  test "should get edit" do
    get edit_species_url(@species)
    assert_response :success
  end

  test "should update species" do
    patch species_url(@species), params: { species: { average_height: @species.average_height, average_lifespan: @species.average_lifespan, classification: @species.classification, designation: @species.designation, eye_colors: @species.eye_colors, hair_colors: @species.hair_colors, homeworld: @species.homeworld, language: @species.language, name: @species.name, skin_colors: @species.skin_colors, url: @species.url } }
    assert_redirected_to species_url(@species)
  end

  test "should destroy species" do
    assert_difference('Specie.count', -1) do
      delete species_url(@species)
    end

    assert_redirected_to species_url
  end
end
