class AddBrandToStyles < ActiveRecord::Migration[7.0]
  def change
    add_column :styles, :brand, :string
  end
end
