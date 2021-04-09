# frozen_string_literal: true

# # frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe 'StaticPages', type: :request do
#   describe 'GET /static_pages' do
#     it 'works! (now write some real specs)' do
#       get root_path
#       expect(response).to have_http_status(200)
#     end
#   end
# end
require 'spec_helper'
require 'rails_helper'

describe 'Static pages' do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe 'Home page' do
    it "should have the content 'Sample App'" do
      visit '/'
      expect(page).to have_content('Sample App')
    end
    it 'should have the right title' do
      visit '/'
      expect(page).to have_title("Home | #{base_title}")
    end
  end

  describe 'Help page' do
    it "should have the content 'Help'" do
      visit '/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/help'
      expect(page).to have_title("Help | #{base_title}")
    end
  end

  describe 'About page' do
    it "should have the content 'About'" do
      visit '/about'
      expect(page).to have_content('About')
    end
    it "should have the title 'About'" do
      visit '/about'
      expect(page).to have_title("About | #{base_title}")
    end
  end

  describe 'Contacts page' do
    it "should have the content 'contacts'" do
      visit '/contacts'
      expect(page).to have_content('Contacts')
    end
    it "should have the title 'Contacts'" do
      visit '/contacts'
      expect(page).to have_title("Contacts | #{base_title}")
    end
  end
end
