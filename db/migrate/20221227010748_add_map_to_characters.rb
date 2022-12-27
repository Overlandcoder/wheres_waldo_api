class AddMapToCharacters < ActiveRecord::Migration[7.0]
  def change
    add_reference :characters, :map, null: false, foreign_key: true
  end
end
