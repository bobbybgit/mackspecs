class CreateStyleSpecs < ActiveRecord::Migration[7.0]
  def change
    create_table :style_specs do |t|
      t.references :style, null: false, foreign_key: true
      t.references :piece, null: false, foreign_key: true

      t.timestamps
    end
  end
end
