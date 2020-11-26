require_relative '../../infra/models/application_record'

module Domain
  module Task
    class Task < Infra::Models::ApplicationRecord
      has_many :sub_tasks
      attribute :user_id, :name, :status

    end
  end
end
