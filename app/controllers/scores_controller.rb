class ScoresController < ApplicationController
  def create
    @map = Map.find_by(name: params[:map_name])
    @score = @map.scores.build(name: params[:name], seconds: params[:seconds])

    if @score.save!
      render json: { message: "Score saved for #{params[:name]}", score: @score }
    else
      render json: { message: @score.errors }
    end
  end

  def top_scores
    @top_scores = {}

    Map.find_each do |map|
      puts map.scores.count
      @top_scores[map.name] = map.scores.ordered.limit(params[:amount].to_i)
    end

    render json: { top_scores: @top_scores }
  end

  private

  def score_params
    params.permit(:name, :seconds, :map_name, :amount)
  end
end
