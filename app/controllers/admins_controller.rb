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
    @conditionOptionsUser = {"name": "学生、企業の名前", "mail": "メールアドレス", "university": "大学", "major": "種類", "address": "住所"}
    @conditionOptionsJob  ={"title": "仕事の名前", "deadline": "締切", "salary": "給料", "typejob_id": "種類", "address": "場所"}
    if params[:searchUser].present? and params[:searchTextUser].present? and params[:conditionUser].present?
      @user = @user.where(["#{params[:conditionUser]} like ?" , "%#{params[:searchTextUser]}%"])
      @searchMessageUser = "条件: \"" << @conditionOptionsUser[:"#{params[:conditionUser]}"] << "\" で \"#{params[:searchTextUser]}\" を検索"
    end
    if params[:searchJob].present? and params[:searchTextJob].present? and params[:conditionJob].present?
      @job = @job.where(["#{params[:conditionJob]} like ?" , "%#{params[:searchTextJob]}%"])
      @searchMessageJob = "条件: \"" << @conditionOptionsJob[:"#{params[:conditionJob]}"] << "\" で \"#{params[:searchTextJob]}\" を検索"
    end
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
