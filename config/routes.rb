Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/record', to: 'sugar_records#index'
  post '/record', to: 'sugar_records#create'
  patch '/record/:id', to: 'sugar_records#update'
  patch '/comment/:id', to: 'comments#update'
  get '/record', to: 'sugar_records#view'

  post '/login', to: 'sessions#login'
  #testing purposes - APP will be post for login purposes
  get '/usersession', to: 'sessions#view'

end
