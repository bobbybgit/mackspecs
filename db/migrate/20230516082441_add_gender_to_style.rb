class AddGenderToStyle < ActiveRecord::Migration[7.0]
  def change
    add_column :styles, :gender, :string
  end
end
