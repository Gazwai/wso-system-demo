class CreateEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :level
      t.string :location
      t.string :role

      t.timestamps
    end
  end
end
