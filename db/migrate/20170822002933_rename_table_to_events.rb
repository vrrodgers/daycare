class RenameTableToEvents < ActiveRecord::Migration[5.0]
  def change
    rename_table :fullcalendar_engine_events, :events
  end
end
