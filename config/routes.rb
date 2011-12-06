Rid::Application.routes.draw do
  
  resources :universities
  resources :degrees do
    resources :courses
  end
  
  resources :ids, :only => [:show, :new, :create]
  resources :sessions, :only => [:create]
  resources :terms, :only => [:index]
    
  root :to => "ids#new"
  
  match "login" => "sessions#new"
  match "logout" => "sessions#destroy"
  match ':controller((/:action)(/:id))'
  
end
