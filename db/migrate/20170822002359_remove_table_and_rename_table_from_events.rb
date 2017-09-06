class RemoveTableAndRenameTableFromEvents < ActiveRecord::Migration[5.0]
  def change
    drop_table :fullcalendar_engine_event_series
  end
end
