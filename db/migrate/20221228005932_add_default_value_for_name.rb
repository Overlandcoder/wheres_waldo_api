class AddDefaultValueForName < ActiveRecord::Migration[7.0]
  def change
    change_column(:scores, :name, :string, default: "Anonymous")
  end
end
