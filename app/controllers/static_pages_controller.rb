class StaticPagesController < ApplicationController
  include Common

  def home
    if (current_user!=nil && current_user.type_user==2)
       @jobs = Job.where(company_id: current_user.id)
    end
    if (current_user!=nil && current_user.type_user==1)
      @a = Typejob.where(name_job: current_user.major).first
      @jobs = Job.where(typejob_id: @a.id, user_id: 0)
      @user = User.all
    end
    if (current_user==nil)
      @jobs = Job.where( user_id: 0)
      @user = User.all
    end
    setBackgroundImage
  end

  def help
  end

  def about

  end

end
