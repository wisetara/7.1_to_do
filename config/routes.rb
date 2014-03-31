ToDos::Application.routes.draw do
  match('tasks', {:via => :get, :to => 'tasks#index'})
  match('tasks/new', {:via => :get, :to => 'tasks#new'})
  match('tasks', {:via => :post, :to => 'tasks#create'})
  match('tasks/:id', {:via => :get, :to => 'tasks#show'})
  match('tasks/:id/edit', {:via => :get, :to => 'tasks#edit'})
  match('tasks/:id', {:via => [:patch, :put], :to => 'tasks#update'})
  match('tasks/:id', {:via => :delete, :to => 'tasks#destroy'})
  #match('tasks', {:via => :post, :patch] :to => 'tasks#index'})
  #match('tasks/:id', {:via => [:patch, :put], :to => 'tasks#update_mark'})
  match('tasks/:id/show', {:via => [:patch, :put], :to => 'tasks#update'})
end
