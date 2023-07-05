Rails.application.routes.draw do

  root 'home#index'

  get 'signup'=>'pages#sign_up'
  get 'login'=>'pages#login'
  
  get 'getAll'=>'employees#index'
  get 'getArtById/:id'=>'employees#show'
  post 'create'=>'employees#create'
  put 'update/:id'=>'employees#update'
  delete 'del/:id'=>'employees#destroy'


end
