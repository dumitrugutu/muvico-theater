class CreateAuditoria < ActiveRecord::Migration[5.0]
  def change
    create_table :auditoria do |t|
      t.string :name, null: false
      t.integer :seat_capacity, null: false

      t.timestamps
    end
  end
end
