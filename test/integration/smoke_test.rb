require "test_helper"

class SmokeTest < ActionDispatch::IntegrationTest
  test "view home page" do
    visit root_path
    assert page.has_content?('Bmore on Rails is a community of Baltimore folks')
  end

  test "navigate to school page" do
    visit root_path
    within('header') { click_on 'School' }
    assert page.has_content?('Workshop for Women')
  end
end
