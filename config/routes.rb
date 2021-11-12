Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :exams
  resources :laboratories
  get 'search_labs_by_exam', to: 'exams#search_labs_by_exam'

  post 'disassociate_exam', to: 'exams#disassociate_exam'

  post 'associate_exam', to: 'exams#associate_exam'

end
