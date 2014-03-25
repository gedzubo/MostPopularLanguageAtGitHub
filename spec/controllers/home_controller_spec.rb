require 'spec_helper'

describe HomeController do

  describe "GET #index" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end
  
  describe "GET #search_for_language" do
    it "returns http success" do
      get 'search_for_language'
      response.should be_success
    end
  end
  
  # Not the best way to test this. Will have to figure out a better way.
  describe "POST #search_for_language_post" do
    context "with existing user" do
      it "returns language if user has available projects" do
        post "search_for_language_post", { user: "gedzubo"}
        expect(assigns("text")).to eq("I found the most popular language. It is Ruby")
      end
      it "returns message that couldn't find language if user don't have any projects" do
        post "search_for_language_post", { user: "ccc"}
        expect(assigns("text")).to eq("Couldn't find anything. Maybe user don't have any projects")
      end
    end
    context "without existing user" do
      it "returns github error text" do
        post "search_for_language_post", { user: "aubuka"}
        expect(assigns("text")).to eq("GitHub returned error. Error text: Not Found")
      end
    end
  end
end
