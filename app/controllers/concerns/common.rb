module Common extend ActiveSupport::Concern

  def setBackgroundImage
    if current_user!=nil && current_user.type_user==2
      @backgroundImage = 'company_top.jpg'
    else
      @backgroundImage = 'hero_1.jpg'
    end
  end
end