class StaticPagesController < ApplicationController
  def home
    if current_user!=nil
      @jobs = Job.where(company_id: current_user.id)
    else
      @jobs = Job.all
      @user = User.all
    end
    @conditionOptions = {"title": "仕事の名前、概要", "deadline": "締切", "salary": "給料", "typejob_id": "種類", "address": "場所"}
  end

  def help
  end

  def about
  end

  # 企業の検索機能
  def searchOwnJobs
    if current_user!=nil
      @jobs = Job.where(company_id: current_user.id)
    else
      @jobs = Job.all
      @user = User.all
    end
    @conditionOptions = {"title": "仕事の名前、概要", "deadline": "締切", "salary": "給料", "typejob_id": "種類", "address": "場所"}
    # ここまで home と同じ。改善できそう
    if params[:searchText].present? and params[:condition].present?
      @searchResult = Job.where(["company_id = ? and #{params[:searchText]} like ?", current_user.id, "%#{params[:condition]}%"])
      @searchMessage = "検索条件: \"" << @conditionOptions[:"#{params[:condition]}"] << "\" で \"#{params[:searchText]}\" を検索"
    else
      @searchResult = Job.where(company_id: current_user.id)
      @searchMessage = "登録した仕事を全件表示"
    end
    render 'home'
  end
end
