Rails.application.routes.draw do

  #Only is removed since we are using all 5 RESTful
  resources :birds #only: [:index, :show, :create, :update]
  patch "/birds/:id/like", to: "birds#increment_likes"
end
