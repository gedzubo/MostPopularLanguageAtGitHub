require "spec_helper"

feature "Language finder" do
  scenario "can find GitHub user's favorite langauage" do
    visit search_path
    fill_in "GitHub account name", :with => "gedzubo"
    click_button "Find"
    expect(page).to have_text("I found the most popular language. It is Ruby")
  end
end
