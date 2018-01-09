Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'phrases#index'
  
  resources :phrases, only: [:index] do
    collection do 
      get :get_random_phrase
      put :clear_phrases
    end   
  end  

end
