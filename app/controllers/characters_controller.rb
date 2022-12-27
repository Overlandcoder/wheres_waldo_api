class CharactersController < ApplicationController
  def check_guess
    char_found = Character.find_char(params[:x].to_f, params[:y].to_f, params[:map])

    if char_found
      render json: { found: char_found }
    else
      render json: { found: "none" }
    end
  end

  private

  def character_params
    params.permit(:x, :y, :map)
  end
end
