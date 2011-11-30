Rid::Application.routes.draw do
  resources :universities
  resources :degrees do
    resources :courses
  end
end
