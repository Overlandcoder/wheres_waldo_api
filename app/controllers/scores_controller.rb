class ScoresController < ApplicationController
  def create
    @map = Map.find_by(name: params[:map])
    @score = @map.scores.build(name: params[:name], seconds: params[:seconds])

    if @score.save
      render json: { message: "Score saved for #{params[:name]}" }
    else
      render json: { message: @score.errors }
    end
  end

  def top_scores
    @top_scores = Score.ordered.limit(params[:amount])

    render json: { top_scores: @top_scores }
  end

  private

  def score_params
    params.permit(:name, :seconds, :map)
  end

  def top_scores_params
    params.permit(:amount)
  end
end
