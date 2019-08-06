class JobsController < ApplicationController
  before_action :authenticate_user!, :only => [:new]
  before_action :job_params, :only => [:create]
  def new
     @job = Job.new
  end
  def create
    @job = current_user.jobs.build job_params
    @job.company_id = current_user.id
    @job.user_id = 0
    byebug
     if @job.save

       redirect_to root_path
     else
       render :new
     end
  end
  private
  def job_params
    params.require(:job).permit :title, :describe, :deadline,
                                  :salary, :typejob_id, :address
  end
end
