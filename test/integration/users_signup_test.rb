require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'invalid signup information' do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: '',
                                         email: 'user@invalid',
                                         password: 'foo',
                                         password_confirmation: 'bar',
                                         phone_number: '080234455' } }
    end
    assert_template 'users/new'
    assert_select 'div.field_with_errors'
    assert_select 'form[action="/signup"]'
  end

  test 'valid signup information' do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: 'Example User',
                                         email: 'user@example.com',
                                         phone_number: '09051234567',
                                         password: 'password',
                                         password_confirmation: 'password' } }
    end
    follow_redirect!
    # assert_template 'users/show'
    # assert is_logged_in?
    # assert_not flash.nil?
  end
end
