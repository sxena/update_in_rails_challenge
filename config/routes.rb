Rails.application.routes.draw do
  get '/index' => 'blog#index', as: 'all_blogs'
  get '/blogs/new' => 'blog#new', as: 'click'
  post '/index' => 'blog#create', as: 'new'
  get '/blog/:id' => 'blog#show', as: 'one_blog'
  delete '/blog/:id' =>'blog#destroy', as: 'delete'
  patch '/blog/:id/update' =>'blog#update', as: 'update'
  post 'blog/:id/edit' => 'blog#edit', as: 'edit'
  put 'blog/:id/submit' => 'blog#submit', as: 'submit'
end
