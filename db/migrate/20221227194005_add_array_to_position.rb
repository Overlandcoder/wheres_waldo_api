class AddArrayToPosition < ActiveRecord::Migration[7.0]
  def change
    remove_column(:characters, :position)
    add_column(:characters, :position, :float, array: true, default: [])
  end
end
