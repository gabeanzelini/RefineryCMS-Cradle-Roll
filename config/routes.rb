Refinery::Application.routes.draw do
  resources :births, :only => [:show, :index]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :births, :except => :show
  end
end

