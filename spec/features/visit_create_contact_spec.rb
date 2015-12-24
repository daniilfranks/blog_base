require "rails_helper"

feature "Contact creation" do
  scenario "allows acees to contacts page" do
    visit '/contacts'

    expect(page).to have_content I18n.t 'contact.contact_us'
  end

  scenario "Create contact" do
    visit '/contacts'

    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Message', :with => 'text message'
    click_button 'Send message'

    expect(page).to have_content 'Contact was successfully created'
  end
end
