Rails.application.routes.draw do
  get 'user_tickets/create'

  get 'user_tickets/destroy'

  get 'user_tickets/update'

  get 'user_tickets/show'

  post '/places/:id', to: 'places#create'

  delete '/places/:id', to: 'places#destroy'

  patch '/places/:id', to: 'places#update'

  get '/places/:id', to: 'places#show', as: 'places'
  get '/places/more_assistance', to: 'places#more_assistance'

  post '/events/:id', to: 'events#create'

  delete '/events/:id', to: 'events#destroy'

  patch '/events/:id', to: 'events#update'

  get '/events/:id', to: 'events#show', as: 'events'
  get '/events/more_bought_less_paid', to: 'events#more_bought_less_paid'

  post '/users/:id', to: 'users#create'

  delete '/users/:id', to: 'users#destroy'

  patch '/users/:id', to: 'users#update'

  get '/users/:id', to: 'users#show', as: 'users'
  get '/users/more_tickets_boughts', to: 'users#more_tickets_boughts'

  post '/tickets/:id', to: 'tickets#create'

  delete '/tickets/:id', to: 'tickets#destroy'

  patch '/tickets/:id', to: 'tickets#update'

  get '/tickets/:id', to: 'tickets#show', as: 'tickets'
  get 'tickets/most_expensives', to: 'tickets#most_expensives'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
