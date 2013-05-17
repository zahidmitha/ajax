require 'spec_helper'

describe UsersController do

  let(:user_hash) { {:user => {:name => "Dave", :email => "dave@example.com", :age => 23}} }

  context "GET new" do
    it "renders the user new form" do
      get :new
      response.should render_template(:new)
    end
  end

  context "POST create" do
    it "creates a new user" do
      expect {post :create, user_hash}.to change(User, :count).by(1)
    end

    it "returns a successful response" do
      post :create, user_hash
      response.body.should eq '{"message":"Success!"}'
    end
  end
end