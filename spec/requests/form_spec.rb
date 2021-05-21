require 'rails_helper'

RSpec.describe "Forms", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/form/index"
      expect(response).to have_http_status(:success)
    end
  end

end
