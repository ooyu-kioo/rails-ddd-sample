require_relative '../../controllers/application_controller'

module Web
  module Controllers
    class TasksController < ApplicationController
      def create_task
        command = Application::Task::Commands::CreateTaskCommand.new(
          user_id: params[:user_id],
          name: params[:name],
          status: params[:status]
        )
        task_id = Application::Task::TaskUseCase.new.create_task

        head :created, location: "tasks/#{task_id}"
      end
    end
  end
end