Rails.application.routes.draw do
  get 'article/index'
  get 'campaign/index'
  get 'campaign_submit', to: 'campaign#submit'

  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
