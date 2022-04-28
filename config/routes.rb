Rails.application.routes.draw do
  
  root 'static_pages#home'

  get 'about', to: 'static_pages#about'
  get 'terms', to: 'static_pages#terms', path: 'terms-of-use'
  get 'privacy', to: 'static_pages#privacy', path: 'privacy-policy'
  get 'wallets', to: 'static_pages#wallets', path: 'wallets'

  match "/404", to: "errors#404", via: :all
  match "/422", to: "errors#422", via: :all
  match "/500", to: "errors#500", via: :all

  devise_for :admins, controllers: { sessions: "admins/sessions", passwords: "admins/passwords", registrations: "admins/registrations", confirmations: "admins/confirmations",  unlocks: "admins/unlocks"}

  devise_scope :admin do
    get 'admins/sign_out', to: 'admins/sessions#destroy', path: 'admins/sign-out'
    get 'admins/sign_in', to: 'admins/sessions#new', path: 'admins/sign-in'
    get 'admins/register', to: 'admins/registrations#new'
  end

  resources :admins, controller: 'admins/admins', only: :show, path: 'admins' do
    get 'user_panel', to: 'admins/admins#user_panel'
    get 'email_panel', to: 'admins/admins#email_panel'
    get 'contact_panel', to: 'admins/admins#contact_panel'
  end

  resources :posts, controller: 'posts/posts', path: 'blog-posts'
  resources :categories, controller: 'categories/categories', path: 'category'

  #resources :contacts, controller: 'contacts/contacts', path: 'contact'

  resources :emails, controller: 'emails/emails', only: [:create, :destroy] do 
    member do
      get :unsubscribe
    end
  end

  resources :follows, controller: 'follows/follows', only: [:create, :destroy]

  devise_for :users, controllers: { sessions: "users/sessions", passwords: "users/passwords", registrations: "users/registrations", confirmations: "users/confirmations",  unlocks: "users/unlocks"}

  devise_scope :user do
    get 'sign_out', to: 'users/sessions#destroy', path: 'sign-out'
    get 'sign_in', to: 'users/sessions#new', path: 'sign-in'
    get 'register', to: 'users/registrations#new'
    get 'edit_user_account', to: 'users/registrations#edit', path: ':user_id/dashboard/settings'
  end

  resources :users, controller: 'users/users', only: [:show, :update], path: ''

end
