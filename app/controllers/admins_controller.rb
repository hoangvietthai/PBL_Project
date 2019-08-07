class AdminsController < ApplicationController

  def new
    byebug
    @person = User.new
  end

  def create
    @a = User.new
    @a.email =params["/admins/new"][:email]
    @a.password =params["/admins/new"][:password]
    @a.password_confirmation =params["/admins/new"][:password_confirmation]
    @a.name =params["/admins/new"][:name]
    @a.address =params["/admins/new"][:address]
    @a.university =params["/admins/new"][:university]
    @a.major =params["/admins/new"][:major]
    @a.type_user =params["/admins/new"][:type_user]
    @a.save
    @user = User.all
    @job = Job.all
    render :show
  end

  def search
    byebug
    render :show
  end

  def show
    @user = User.all
    @job = Job.all
    @a = User.new
    render :show
  end

  def destroy
    @a = User.find(params[:user][:user_id])
    @a.destroy
    @user = User.all
    @job = Job.all
    render :show
  end

  def edit
    @user_fix = User.find(params[:user][:user_id])
    render :edit
  end

  def update
    @a = User.find(params["/user"][:id_user])
    @a.email = params["/user"][:email]
    @a.name = params["/user"][:name]
    @a.address = params["/user"][:address]
    @a.major = params["/user"][:major]
    @a.university = params["/user"][:university]
    @a.save
    @user = User.all
    @job = Job.all
    render :show
  end

  private
  def user_params
    params.require(:user_fix).permit :email, :name, :address,
                                :major, :university
  end

end
