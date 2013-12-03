class VisitorsController < ApplicationController


  def new
    @projects = Project.where(:public => true)
    @user == logged_user and return
  end
  def logged_user

    User.find_by(id: current_user)
  end

  def index
  end

end
