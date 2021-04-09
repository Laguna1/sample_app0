# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /new' do
    it 'returns http success' do
      get '/signup'
      expect(response).to have_http_status(:success)
    end
  end
  describe 'Signup page' do
    it "should have the content 'Sign up'" do
      visit '/signup'
      expect(page).to have_content('Sign up')
    end
    it "should have the title 'Sign up'" do
      visit '/signup'
      expect(page).to have_title("Sign up | Ruby on Rails Tutorial Sample App")
    end
  end

end

