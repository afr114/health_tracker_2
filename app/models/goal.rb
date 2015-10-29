class Goal < ActiveRecord::Base
  validates_presence_of :calorie_goal, :exercise_goal

  belongs_to :user
  has_many :foods

  def total_calories_consumed
    total = 0
    foods.each do |food|
      total += food.calories
    end
    return total
  end
end
