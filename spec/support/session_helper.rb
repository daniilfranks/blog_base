def sign_up
  visit new_user_registration_path

  fill_in :user_name, :with => 'Den'
  fill_in :user_email, :with => 'den@example.com'
  fill_in :user_password, :with => '123456789qw'
  fill_in :user_password_confirmation, :with => '123456789qw'

  click_button 'Sign up'
end