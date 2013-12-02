class VisitorsController < ApplicationController


  def new
    @projects = Project.where(:public => true)
    #@projects = Project.all
    @user == current_user and return
  end
  before_filter :authenticate_user!
  def current_user

    User.find(params[:id])
  end

  def index
  end

end
