class CreatePieceConstructions < ActiveRecord::Migration[7.0]
  def change
    create_table :piece_constructions do |t|
      t.references :piece, null: false, foreign_key: true
      t.references :instruction, null: false, foreign_key: true
      t.integer :topstitch_rows

      t.timestamps
    end
  end
end
