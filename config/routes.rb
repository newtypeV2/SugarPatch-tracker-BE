Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  #testing purposes - APP will be post for login purposes
  get '/usersession', to: 'sessions#view'

end
