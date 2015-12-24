require "rails_helper"

feature "Article creation" do
  before(:each) do
    sign_up
  end

  scenario "visit new article page" do
    visit new_article_path
    expect(page).to have_content 'New article'
  end
end