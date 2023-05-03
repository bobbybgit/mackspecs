class CreateSpecs < ActiveRecord::Migration[7.0]
  def change
    create_table :specs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :style, null: false, foreign_key: true
      t.date :last_edited
      t.date :last_exported
      t.date :last_printed

      t.timestamps
    end
  end
end
