require "rails_helper"

describe "Books Api", type: :request do
  it "returns all books" do
    FactoryBot.create(:book, title: "Refactoring", author: "Martin")
    FactoryBot.create(:book, title: "sdewcf", author: "dwdwd")

    get "/api/v1/books"

    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body).size).to eq(2)
  end
end
