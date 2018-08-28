class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_index :rates, :name, unique: true
  end
end
