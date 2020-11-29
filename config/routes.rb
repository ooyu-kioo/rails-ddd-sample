Rails.application.routes.draw do
  # Commands
  post 'tasks', to: 'tasks#create_task'

  # Queries
  get 'tasks', to: 'tasks#find_all_tasks'
end
