# 実装class
module Infra
  module Repositories
    class UserRepository < Domain::User::UserRepositoryIf
      def save(task)
        raise "Not implemented yet"
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