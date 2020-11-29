require_relative '../../infra/repositories/task_repository'
require_relative '../../infra/queries/tasks_query'
require_relative '../../domain/task/task'

module Application
  module Task
    class TaskUseCase
      def initialize(repositories = {})
        @task_repository = repositories.fetch(:task) { Infra::Repositories::TaskRepository.new }
      end

      def create_task(create_task_command)
        task = Domain::Task::Task.new(
          user_id: create_task_command.user_id,
          name: create_task_command.name,
          status: create_task_command.status
        )

        ActiveRecord::Base.transaction do
          @task_repository.save(task)
          task.id
        end
      end

      def find_all_tasks
        Infra::Queries::TasksQuery.find_all_tasks
      end
    end
  end
end