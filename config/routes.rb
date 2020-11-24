Rails.application.routes.draw do
  scope module: 'web' do
    scope module: 'controllers' do
      # Commands
      post 'tasks', to: 'tasks#create_task'

      # Queries
      # get 'tasks/:task_id', to: 'tasks#find_task_by_id'
    end
  end
end
