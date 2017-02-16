class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.references :movie
      
      t.timestamps
    end
  end
end
