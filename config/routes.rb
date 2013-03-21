Photogrr::Application.routes.draw do

  resources :pictures    #whenever you're talking about the model it is always singular
                      #whenever you're talking about the controller it is always plural
                      
  root :to => 'pictures#index'
    
end