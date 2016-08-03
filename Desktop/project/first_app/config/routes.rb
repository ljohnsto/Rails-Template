Rails.application.routes.draw do

  get 'new' => 'users#new'

  get 'create' => 'users#create'

  get '/' => 'users#index'

end
