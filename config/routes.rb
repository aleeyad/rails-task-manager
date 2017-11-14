Rails.application.routes.draw do
  # get 'tasks/index', to: 'tasks#index' as: :tasks

  # get 'tasks/:id', to: 'tasks#show' as: :task

  # get 'tasks/new', to: 'tasks#new' as: :new_restaurant

  # get 'tasks/create', to: 'tasks#create' as: :tasks

  # get 'tasks/edit', to: 'tasks#edit' as: :edit_task

  # get 'tasks/update', to: ''

  # get 'tasks/destroy'

    resources :tasks
    root to: 'tasks#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
