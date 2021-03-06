require "application_system_test_case"

class StarshipsTest < ApplicationSystemTestCase
  setup do
    @starship = starships(:one)
  end

  test "visiting the index" do
    visit starships_url
    assert_selector "h1", text: "Starships"
  end

  test "creating a Starship" do
    visit starships_url
    click_on "New Starship"

    fill_in "Cargo capacity", with: @starship.cargo_capacity
    fill_in "Consumables", with: @starship.consumables
    fill_in "Cost in credits", with: @starship.cost_in_credits
    fill_in "Crew", with: @starship.crew
    fill_in "Hyperdrive rating", with: @starship.hyperdrive_rating
    fill_in "Length", with: @starship.length
    fill_in "Manufacturer", with: @starship.manufacturer
    fill_in "Max atmosphering speed", with: @starship.max_atmosphering_speed
    fill_in "Mglt", with: @starship.mglt
    fill_in "Model", with: @starship.model
    fill_in "Name", with: @starship.name
    fill_in "Passengers", with: @starship.passengers
    fill_in "Starship class", with: @starship.starship_class
    fill_in "Url", with: @starship.url
    click_on "Create Starship"

    assert_text "Starship was successfully created"
    click_on "Back"
  end

  test "updating a Starship" do
    visit starships_url
    click_on "Edit", match: :first

    fill_in "Cargo capacity", with: @starship.cargo_capacity
    fill_in "Consumables", with: @starship.consumables
    fill_in "Cost in credits", with: @starship.cost_in_credits
    fill_in "Crew", with: @starship.crew
    fill_in "Hyperdrive rating", with: @starship.hyperdrive_rating
    fill_in "Length", with: @starship.length
    fill_in "Manufacturer", with: @starship.manufacturer
    fill_in "Max atmosphering speed", with: @starship.max_atmosphering_speed
    fill_in "Mglt", with: @starship.mglt
    fill_in "Model", with: @starship.model
    fill_in "Name", with: @starship.name
    fill_in "Passengers", with: @starship.passengers
    fill_in "Starship class", with: @starship.starship_class
    fill_in "Url", with: @starship.url
    click_on "Update Starship"

    assert_text "Starship was successfully updated"
    click_on "Back"
  end

  test "destroying a Starship" do
    visit starships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Starship was successfully destroyed"
  end
end
