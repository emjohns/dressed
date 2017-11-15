Rails.application.routes.draw do

  devise_for :users
  resources :tags
  resources :items
  get 'welcome/index'

  get 'welcome/about'

  get 'about_us' => 'welcome#about'
  get 'welcome' => 'welcome#index'
  get 'my_closet' => 'items#index'
  post 'add_to_outfit' => 'outfit#add_to_outfit'
  get 'view_outfit' => 'outfit#view_outfit'
  get 'get_dressed' => 'outfit#get_dressed'
  get 'past_outfits' => 'outfit#past_outfits'
  get 'show_outfit' => 'outfit#show'

  delete 'remove' => 'outfit#remove', as: 'remove_line_item'



  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
