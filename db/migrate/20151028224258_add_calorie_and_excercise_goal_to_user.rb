class AddCalorieAndExcerciseGoalToUser < ActiveRecord::Migration
  def change
    add_column :users, :calorie_goal, :integer, :default => 0
    add_column :users, :exercise_goal, :integer, :default => 0

  end
end
