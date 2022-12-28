class ScoresController < ApplicationController
  def create
    @score = Score.new(score_params)

    if @score.save
      render json: { message: "saved" }
    else
      render json: { message: @score.errors }
    end
  end

  private

  def score_params
    params.permit(:name, :seconds)
  end
end
