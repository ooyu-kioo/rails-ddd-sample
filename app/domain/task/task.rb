module Domain
  module Task
    # TODO：継承の読み込み時名前空間的にエラー吐く
    class Task < Infra::Models::ApplicationRecord
      has_many :sub_tasks
      attribute :user_id, :name, :status

    end
  end
end
