Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # list all the movies

  get "/movies", to: "movies#index", as: "movies"

  # add a movie

  post "/movies", to: "movies#create"

  # add a new movie

  get "/movies/new", to: "movies#new", as: "new_movie"

  # show individual movie

  get "/movies/:id", to: "movies#show", as: "movie"

  # edit a movie

  get "/movies/:id/edit", to: "movies#edit", as: "edit_movie"

  # update the movie

  put "/movies/:id", to: "movies#update"
end
