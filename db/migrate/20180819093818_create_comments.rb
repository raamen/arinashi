class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, null: false, index: true
      t.references :restaurant, null: false, index: true
      t.text :body, null: false
      t.datetime :post_at, null: false

      t.timestamps
    end
  end
end
