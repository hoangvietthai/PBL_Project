class JobsController < ApplicationController
  include Common
  before_action :authenticate_user!, :only => [:new]
  before_action :job_params, :only => [:create]
  def new
    @job = Job.new
    setBackgroundImage
  end

  def show
    @comment = Comment.new
    @job = Job.find params[:format]
    @person = Contact.where(job_id: @job.id)
    if user_signed_in?
      @check = Contact.where(job_id: @job.id, student_id: current_user.id)
    else
      @check =0
    end
    @detail_comment = Comment.where(job_id: @job.id)
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
     setBackgroundImage
     render :detail
  end

  private
  def job_params
    params.require(:job).permit :title, :describe, :deadline,
                                  :salary, :typejob_id, :address
  end
end
