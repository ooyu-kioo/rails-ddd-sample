# 実装class
module Infra
  module Repositories
    class TaskRepository < Domain::Task::TaskRepositoryIF
      def save(task)
        task = Task.build(task)
        task.save
      end

      def update(task)
        raise "Not implemented yet"
      end

      def delete(task)
        raise "Not implemented yet"
      end
    end
  end
end