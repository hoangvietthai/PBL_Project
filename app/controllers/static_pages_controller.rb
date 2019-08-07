class StaticPagesController < ApplicationController
  include Common

  def home
    # 企業
    if (current_user!=nil && current_user.type_user==2)
       @jobs = Job.where(company_id: current_user.id)
       @conditionOptions = {"title": "仕事の名前", "deadline": "締切", "salary": "給料", "typejob_id": "種類", "address": "場所"}
      #GET処理
        if params[:searchText].present? and params[:condition].present?
          @searchResult = @jobs.where(["#{params[:condition]} like ?" , "%#{params[:searchText]}%"])
          @searchMessage = "条件: \"" << @conditionOptions[:"#{params[:condition]}"] << "\" で \"#{params[:searchText]}\" を検索"
        else
          @searchResult = Job.where(company_id: current_user.id)
          @searchMessage = "登録した仕事を全件表示"
        end
    end
    # 学生
    if (current_user!=nil && current_user.type_user==1)
      @a = Typejob.where(name_job: current_user.major).first
      @jobs = Job.where(typejob_id: @a.id, user_id: 0)
      @user = User.all
      @conditionOptions = {"title": "仕事の名前", "deadline": "締切", "salary": "給料",  "address": "場所"}
      #GET処理
        if params[:searchText].present? and params[:condition].present?
          @searchResult = @jobs.where(["#{params[:condition]} like ?", "%#{params[:searchText]}%"])
          @searchMessage = "条件: \"" << @conditionOptions[:"#{params[:condition]}"] << "\" で \"#{params[:searchText]}\" を検索"
        else
          @searchResult = Job.where(company_id: current_user.id)
          @searchMessage = "条件と検索ワードを設定してください。"
        end
      end
    if (current_user==nil)
      # ログイン前
      @jobs = Job.where(user_id: 0)
      @user = User.all
      @conditionOptions = {"title": "仕事の名前、概要", "deadline": "締切", "salary": "給料", "typejob_id": "種類", "address": "場所"}
      #GET処理
      if params[:searchText].present? and params[:condition].present?
        @searchResult = @jobs.where(["#{params[:condition]} like ?", "%#{params[:searchText]}%"])
        @searchMessage = "検索条件: \"" << @conditionOptions[:"#{params[:condition]}"] << "\" で \"#{params[:searchText]}\" を検索"
      else
        @searchResult = Job.where(company_id: current_user.id)
        @searchMessage = "条件と検索ワードを設定してください。"
      end
    end
    setBackgroundImage
  end

  def help
  end

  def about

  end

end
