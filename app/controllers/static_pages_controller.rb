class StaticPagesController < ApplicationController
  def home
    @jobs = Job.where(company_id: current_user.id)
  end

  def help
  end

  def about
  end

end
