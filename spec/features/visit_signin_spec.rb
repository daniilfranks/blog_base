require "rails_helper"

feature "Account creation" do
  scenario "creat accaunt" do
    sign_up
    expect(page).to have_content I18n.t 'devise.registrations.signed_up'
  end
end