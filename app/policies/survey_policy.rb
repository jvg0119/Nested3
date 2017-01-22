class SurveyPolicy < ApplicationPolicy
  
  def index?
    true
  end

  def destroy?
  	user.present? && user.admin? # only admin user can delete surveys
  	#user.present? && (record.user == user || user.admin?)
  end

end