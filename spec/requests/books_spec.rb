require 'rails_helper'

describe 'Books API', type: :request do
  it 'return all books' do
    FactoryBot.create(:book, title: '1977', author: 'Macpol Koong')
    FactoryBot.create(:book, title: 'The Yaliop', author: 'J. P. Oipl')

    get '/api/v1/books'
    
    # expect(response).to_have_http_status(:success)
    expect(response.status).to eq(200)
    expect(JSON.parse(response.body).size).to eq(2)
  end
end