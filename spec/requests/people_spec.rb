require 'rails_helper'

RSpec.describe "People", type: :request do
  
  describe "GET /people" do
    it "return success status" do
      get people_path
      expect(response).to have_http_status(200)      
    end
  end

  describe "GET /people/1" do
    it "return success status" do
      get people_path(id: 1)
      expect(response).to have_http_status(200)      
    end
  end
end