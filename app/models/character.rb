class Character < ApplicationRecord
  belongs_to :map

  def self.find_char(guess_x, guess_y, map)
    map_id = Map.find_by(name: map).id
    characters = Character.where(map: map_id)

    characters.any? do |character|
      x1 = character.position[0]
      x2 = character.position[1]
      y1 = character.position[2]
      y2 = character.position[3]

      return character.name if guess_x.between?(x1, x2) && guess_y.between?(y1, y2)
    end
  end
end
