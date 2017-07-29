require 'rails_helper'

Rspec.describe 'Users API', type: :request do
  let!(:user) { create(:user) }
  let(:user_id) { user.id }

  describe "GET /users/:id" do
    before do
      headers = {"Accept" => "application/vnd/taskmanager.v1" }
      get "/users/#{user_id}", {}, header
    end

    context "when the user exists" do
      it "returns the user" do
        user_response = JSON.parse(response.body)
        expect(user_response["id"]).to eq(user_id)
      end
    end


  end


end
