class CreatePieces < ActiveRecord::Migration[7.0]
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :area
      t.string :sub_area
      t.string :image

      t.timestamps
    end
  end
end
