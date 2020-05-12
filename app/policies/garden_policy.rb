class GardenPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    user_owns_record? || user_is_admin?
  end

  def destroy?
    user_owns_record? || user_is_admin?
  end

  private

  def user_owns_record?
    record.user == user # user here is the current_user
  end

  def user_is_admin?
    # check if current_user (user) is an admin
    user.admin?
  end
end
