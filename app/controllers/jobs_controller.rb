class JobsController < ApplicationController
  before_action :authenticate_user!, :only => [:new]
  before_action :job_params, :only => [:create]
  def new
     @job = Job.new
  end

  def show
    @job = Job.find params[:format]
    @person = Contact.where(job_id: @job.id)
    @check = Contact.where(job_id: @job.id, student_id: current_user.id)
    render :show
  end
  def create
    @job = current_user.jobs.build job_params
    @job.company_id = current_user.id
    @job.user_id = 0
     if @job.save
       redirect_to root_path
     else
       render :new
     end
  end

  def detail
     @user_job = Job.where(user_id: current_user.id)
     @a = Contact.where(student_id: current_user.id)
     @user_job_wait = []
     @a.each do |i|
         @b = Job.find(i.job_id)
         if @b.user_id == 0
           @user_job_wait.push @b
         end
     end
     render :detail
  end

  private
  def job_params
    params.require(:job).permit :title, :describe, :deadline,
                                  :salary, :typejob_id, :address
  end
end
