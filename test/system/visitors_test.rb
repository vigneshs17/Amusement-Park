require "application_system_test_case"

class VisitorsTest < ApplicationSystemTestCase
  setup do
    @visitor = visitors(:one)
  end

  test "visiting the index" do
    visit visitors_url
    assert_selector "h1", text: "Visitors"
  end

  test "creating a Visitor" do
    visit visitors_url
    click_on "New Visitor"

    fill_in "Contact", with: @visitor.contact
    fill_in "Nooftickets", with: @visitor.noOfTickets
    fill_in "Vemail", with: @visitor.vemail
    fill_in "Visitdate", with: @visitor.visitDate
    fill_in "Vname", with: @visitor.vname
    click_on "Create Visitor"

    assert_text "Visitor was successfully created"
    click_on "Back"
  end

  test "updating a Visitor" do
    visit visitors_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @visitor.contact
    fill_in "Nooftickets", with: @visitor.noOfTickets
    fill_in "Vemail", with: @visitor.vemail
    fill_in "Visitdate", with: @visitor.visitDate
    fill_in "Vname", with: @visitor.vname
    click_on "Update Visitor"

    assert_text "Visitor was successfully updated"
    click_on "Back"
  end

  test "destroying a Visitor" do
    visit visitors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visitor was successfully destroyed"
  end
end
