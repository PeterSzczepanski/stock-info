Rails.application.routes.draw do
  scope '/api/v1' do
    get '/stocks', to: 'stocks#index'
    # get '/stocks/search', to: 'stocks#search'
    get '/stocks/:symbol', to: 'stocks#show'

    get '/prices/:symbol', to: 'prices#history'
  end
end
