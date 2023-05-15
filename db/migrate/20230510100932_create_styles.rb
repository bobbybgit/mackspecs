class CreateStyles < ActiveRecord::Migration[7.0]
  def change
    create_table :styles do |t|
      t.string :name
      t.string :style_num
      t.string :style_image

      t.timestamps
    end
  end
end
