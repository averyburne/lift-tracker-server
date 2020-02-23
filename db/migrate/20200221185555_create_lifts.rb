class CreateLifts < ActiveRecord::Migration[5.2]
  def change
    create_table :lifts do |t|
      t.string :exercise, null: false
      t.integer :weight, null: false
      t.integer :reps, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
