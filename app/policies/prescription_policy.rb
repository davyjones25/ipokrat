class PrescriptionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
  	record.user.role == "doctor"
    return true
  end
  def update?
  	record.user.role == "retailer"
    return true
  end
  def index?
    return true
  end
end
