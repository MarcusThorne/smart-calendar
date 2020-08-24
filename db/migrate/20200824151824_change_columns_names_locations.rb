class ChangeColumnsNamesLocations < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :start_location, :previous_location
    rename_column :events, :end_location, :event_location
  end
end
