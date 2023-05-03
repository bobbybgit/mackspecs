class CreateParts < ActiveRecord::Migration[7.0]
  def change
    create_table :parts do |t|
      t.string :name
      t.references :position, null: false, foreign_key: true
      t.string :sub_position
      t.integer :minutes

      t.timestamps
    end
  end
end
