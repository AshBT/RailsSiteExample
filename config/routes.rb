Photogrr::Application.routes.draw do

  root :to => 'pictures#index'

  resources :pictures    #whenever you're talking about the model it is always singular
                      #whenever you're talking about the controller it is always plural
                      
  
    
end