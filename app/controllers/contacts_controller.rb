class ContactsController < ApplicationController
  include Common
  def new
    @contact = Contact.new
    @contact.job_id = params[:my_service][:job_id]
    @contact.student_id = params[:my_service][:user_id]
    @contact.status = 0
    @contact.save
    redirect_to request.referrer
  end

  def edit
    @a = params[:person][:person_id]
    @b = params[:person][:job_id]
    @person = Contact.where(:student_id => @a, :job_id => @b).first
    @person.status = 1
    @person.save
    @job = Job.find(@b)
    @job.user_id = @a
    @job.save
    redirect_to request.referrer
  end
end
