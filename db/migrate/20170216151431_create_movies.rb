class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.datetime :start_time, null: false

      t.timestamps
    end
  end
end
