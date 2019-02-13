require "application_system_test_case"

class ProyectsTest < ApplicationSystemTestCase
  setup do
    @proyect = proyects(:one)
  end

  test "visiting the index" do
    visit proyects_url
    assert_selector "h1", text: "Proyects"
  end

  test "creating a Proyect" do
    visit proyects_url
    click_on "New Proyect"

    fill_in "Budget", with: @proyect.budget
    fill_in "Description", with: @proyect.description
    fill_in "Name", with: @proyect.name
    click_on "Create Proyect"

    assert_text "Proyect was successfully created"
    click_on "Back"
  end

  test "updating a Proyect" do
    visit proyects_url
    click_on "Edit", match: :first

    fill_in "Budget", with: @proyect.budget
    fill_in "Description", with: @proyect.description
    fill_in "Name", with: @proyect.name
    click_on "Update Proyect"

    assert_text "Proyect was successfully updated"
    click_on "Back"
  end

  test "destroying a Proyect" do
    visit proyects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proyect was successfully destroyed"
  end
end
