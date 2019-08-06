class StaticPagesController < ApplicationController
  def home
    if current_user!=nil
       @jobs = Job.where(company_id: current_user.id)
    else
       @jobs = Job.all
       @user = User.all
    end
  end

  def help
  end

  def about
  end

end
