module Common extend ActiveSupport::Concern

  def setBackgroundImage
    if  user_signed_in? && current_user.type_user==2
      @backgroundImage = 'company_top.jpg'
    else
      @backgroundImage = 'student_top.jpg'
    end
  end
end