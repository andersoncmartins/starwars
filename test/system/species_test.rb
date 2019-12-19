require "application_system_test_case"

class SpeciesTest < ApplicationSystemTestCase
  setup do
    @species = species(:one)
  end

  test "visiting the index" do
    visit species_url
    assert_selector "h1", text: "Species"
  end

  test "creating a Specie" do
    visit species_url
    click_on "New Specie"

    fill_in "Average height", with: @species.average_height
    fill_in "Average lifespan", with: @species.average_lifespan
    fill_in "Classification", with: @species.classification
    fill_in "Designation", with: @species.designation
    fill_in "Eye colors", with: @species.eye_colors
    fill_in "Hair colors", with: @species.hair_colors
    fill_in "Homeworld", with: @species.homeworld
    fill_in "Language", with: @species.language
    fill_in "Name", with: @species.name
    fill_in "Skin colors", with: @species.skin_colors
    fill_in "Url", with: @species.url
    click_on "Create Specie"

    assert_text "Specie was successfully created"
    click_on "Back"
  end

  test "updating a Specie" do
    visit species_url
    click_on "Edit", match: :first

    fill_in "Average height", with: @species.average_height
    fill_in "Average lifespan", with: @species.average_lifespan
    fill_in "Classification", with: @species.classification
    fill_in "Designation", with: @species.designation
    fill_in "Eye colors", with: @species.eye_colors
    fill_in "Hair colors", with: @species.hair_colors
    fill_in "Homeworld", with: @species.homeworld
    fill_in "Language", with: @species.language
    fill_in "Name", with: @species.name
    fill_in "Skin colors", with: @species.skin_colors
    fill_in "Url", with: @species.url
    click_on "Update Specie"

    assert_text "Specie was successfully updated"
    click_on "Back"
  end

  test "destroying a Specie" do
    visit species_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Specie was successfully destroyed"
  end
end
