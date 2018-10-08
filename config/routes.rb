Rails.application.routes.draw do
  # devise_for :customers
  devise_for :customers, controllers: {
  sessions:      'customer/sessions',
  passwords:     'customer/passwords',
  registrations: 'customer/registrations'
}
  get 'clips/create'

  get 'clips/destroy'

 # devise_for :users
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

  get 'user_register_or_session', to: 'users#register_or_session'
  resources :events, only: [:index, :destroy,:new,  :edit, :update, :create, :show]
  get 'search_event', to: 'events#search'
  resources :users, only: [:show ,:edit, :update]
  resources :customers, only: [:show]
  # get 'user/:id'  =>  'users#index'	

  root 'events#index'
  # get 'search', to: 'students#search'

  # get 'user/:id'  =>  'users#show'
  # プロフィール詳細追加用


  resources :events do
  member do
    post "add", to: "clips#create"
    end
  end

  resources :clips, only: [:destroy]


end
