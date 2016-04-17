class Cat < ActiveRecord::Base
  belongs_to :user

  COLORS = ["Red"]

  def color1
    return COLORS[self.coat_color]
  end

end