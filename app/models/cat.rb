class Cat < ActiveRecord::Base
  belongs_to :user

  COLORS = ["Red"]
  PRIMARY_PATTERNS = ["Basic"]
  SECONDARY_PATTERNS = ["Basic"]

  def self.gen_one_create
    self.create(
      coat_color: rand(COLORS.length) - 1,
      marking_color: rand(COLORS.length) - 1,
      coat_pattern: rand(PRIMARY_PATTERNS.length) - 1,
      marking_pattern: rand(SECONDARY_PATTERNS.length) - 1,
      gen_one: true)
  end
    # def initialize(options = {})
    #   # cat = self.create
    #   if options[gen_one] == true
    #     cat.
    #     cat.
    #     cat.
    #     cat.
    #     cat.
    #   else
    #     #breeding logic here
    #   end

    # end

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