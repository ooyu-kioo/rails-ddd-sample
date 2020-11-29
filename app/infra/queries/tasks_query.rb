require_relative '../../domain/task/task'
require_relative '../../domain/task/sub_task'

module Infra
  module Queries
    class TasksQuery < Domain::Task::Task
      class << self
        def find_all_tasks
          self.includes(:sub_tasks).all
        end
      end
    end
  end
end
