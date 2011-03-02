Refinery::Application.routes.draw do
  resources :cradle_roll, :as => :births, :controller => :births, :only => [:show, :index]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :cradle_roll, :except => :show, :as => :births, :controller => :births
  end
end

