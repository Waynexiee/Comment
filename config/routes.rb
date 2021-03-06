Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'blogs#index'
  resources :blogs do
    resources :comments
  end
  get '/blogs/(:blog_id)/comments/new/(:parent_id)', to: 'comments#new', as: :new_comment
end
