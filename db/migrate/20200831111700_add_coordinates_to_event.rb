class AddCoordinatesToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :start_lng, :float
    add_column :events, :start_lat, :float
    add_column :events, :end_lng, :float
    add_column :events, :end_lat, :float
  end
end
