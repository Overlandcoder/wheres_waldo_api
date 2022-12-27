class AddPositionToCharacter < ActiveRecord::Migration[7.0]
  def change
    add_column :characters, :position, :integer, array: true, default: []
  end
end
