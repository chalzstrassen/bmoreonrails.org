BmoreonrailsOrg::Application.routes.draw do
  root 'pages#home'
  get 'pages/school', to: 'pages#school', path: '/school'

  namespace :school do
    resources :resources, only: [:index] do
      collection do
        get 'blogger'
      end
    end
  end
end
