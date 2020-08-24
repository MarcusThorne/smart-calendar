class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :start_location
      t.string :end_location
      t.text :description
      t.string :name
      t.string :category
      t.time :start_time
      t.time :end_time
      t.date :start_date
      t.date :end_date
      t.float :time_difference
      t.string :travel_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
