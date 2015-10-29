class ExercisesController < ApplicationController
before_action :set_exercise, only: [:show, :edit, :update, :destroy]

def index
end

def show
end

def new
@exercise = Exercise.new
end

def create
  @exercise = Exercise.new(exercise_params)
  @exercise.user_id = params[:user_id]
  @exercise.goal_id = params[:goal_id]
  @exercise.save
  redirect_to root_path
end

def edit
end

def update
  @exercise.update(exercise_params)
  redirect_to root_path
end

def destroy
  @exercise.destroy
end

private

def exercise_params
  params.require(:exercise).permit(:name, :calories, :user_id, :goal_id)
end

def set_exercise
  @exercise = Exercise.find(params[:id])
end

end
