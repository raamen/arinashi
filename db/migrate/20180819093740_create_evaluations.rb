class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.references :user, null: false, index: true
      t.references :restaurant, null: false
      t.references :rate, null: false
      t.text :comment, null: true, default: nil

      t.timestamps
    end

    add_index :evaluations, %i(restaurant_id user_id), name: :uk, unique: true
  end
end
