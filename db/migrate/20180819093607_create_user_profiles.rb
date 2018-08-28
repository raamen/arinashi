class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.references :user, null: false, index: { unique: true }
      t.string :name, null: true, default: nil
      t.datetime :birthday, null: true, default: nil
      t.string :gender, null: true, default: nil
      t.references :pref, null: true, default: nil, index: { unique: true }

      t.timestamps
    end
    add_index :user_profiles, :name, unique: true
  end
end
