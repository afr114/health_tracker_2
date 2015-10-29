class GoalsController < ApplicationController
  def edit
    @goal = current_user.goals.last
    if params[:calorie]
      @calorie = true
    else
      @calorie = false
    end
    respond_to do |format|
      format.js
      format.html { redirect_to(root_path) }
    end
  end

  def update
    @goal = Goal.find(params[:id])
    @goal.update(goal_params)
    if goal_params[:calorie_goal]
      @calorie = true
    else
      @calorie = false
    end
    respond_to do |format|
      format.js
      format.html { redirect_to(root_path) }
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:calorie_goal, :exercise_goal)
  end

end
