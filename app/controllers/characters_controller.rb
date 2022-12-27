class CharactersController < ApplicationController
  def check_guess
    char_found = Character.find_char(params[:x], params[:y], params[:map])
    # render :text => @some_object.inspect

    if char_found
      render json: { found: "test" }
    else
      render json: { found: "none" }
    end
  end

  private

  def character_params
    params.permit(:x, :y, :map)
  end
end
