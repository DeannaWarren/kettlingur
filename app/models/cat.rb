class Cat < ActiveRecord::Base
  belongs_to :user

  COLORS = ["Red"]
  PRIMARY_PATTERNS = ["Basic"]
  SECONDARY_PATTERNS = ["Basic"]

  def primary_color
    return COLORS[self.coat_color]
  end

  def secondary_color
    return COLORS[self.marking_color]
  end

  def primary_pattern
    return PRIMARY_PATTERNS[self.coat_pattern]
  end

  def secondary_pattern
    return SECONDARY_PATTERNS[self.marking_pattern]
  end

end