class StaticPagesController < ApplicationController
  include Common

  def home
    # 企業
    if (current_user!=nil && current_user.type_user==2)
       @jobs = Job.where(company_id: current_user.id)
       @conditionOptions = {"title": "仕事の名前", "deadline": "締切", "salary": "給料", "typejob_id": "種類", "address": "場所"}
      #POST処理
      if request.post?
        if params[:searchText].present? and params[:condition].present?
          @searchResult = @jobs.where(["#{params[:searchText]} like ?" , "%#{params[:condition]}%"])
          @searchMessage = "検索条件: \"" << @conditionOptions[:"#{params[:condition]}"] << "\" で \"#{params[:searchText]}\" を検索"
        else
          @searchResult = Job.where(company_id: current_user.id)
          @searchMessage = "登録した仕事を全件表示"
        end
      end
    end
    # 学生
    if (current_user!=nil && current_user.type_user==1)
      @a = Typejob.where(name_job: current_user.major).first
      @jobs = Job.where(typejob_id: @a.id, user_id: 0)
      @user = User.all
      @conditionOptions = {"title": "仕事の名前", "deadline": "締切", "salary": "給料",  "address": "場所"}
      #POST処理
      if request.post?
        if params[:searchText].present? and params[:condition].present?
          @searchResult = @jobs.where(["#{params[:searchText]} like ?", "%#{params[:condition]}%"])
          @searchMessage = "検索条件: \"" << @conditionOptions[:"#{params[:condition]}"] << "\" で \"#{params[:searchText]}\" を検索"
        else
          @searchResult = Job.where(company_id: current_user.id)
          @searchMessage = ""
        end
      end
      end
    if (current_user==nil)
      @jobs = Job.where( user_id: 0)
      @user = User.all
      @conditionOptions = {"title": "仕事の名前、概要", "deadline": "締切", "salary": "給料", "typejob_id": "種類", "address": "場所"}
    end
    setBackgroundImage
  end

  def help
  end

  def about

  end

end
