class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.column :date, :datetime
      t.column :calorie_goal, :integer
      t.column :exercise_goal, :integer
      t.column :user_id, :integer
      t.timestamps null: false
    end
  end
end
