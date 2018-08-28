class CreatePrefs < ActiveRecord::Migration[5.2]
  def change
    create_table :prefs do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_index :prefs, :name, unique: true
  end
end
