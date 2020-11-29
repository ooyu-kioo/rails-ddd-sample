Rails.application.routes.draw do
  # Commands
  post 'tasks', to: 'tasks#create_task'

  # Queries
  # get 'tasks/:task_id', to: 'tasks#find_task_by_id'
end
