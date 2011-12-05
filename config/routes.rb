Rid::Application.routes.draw do
  
  resources :universities
  resources :degrees do
    resources :courses
  end
  
  resources :ids, :only => [:show, :new, :create]
    
  root :to => "ids#new"
  
  match ':controller((/:action)(/:id))'
  
end
