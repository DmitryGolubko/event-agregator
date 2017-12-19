class AddDateToEvents < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :date, 'timestamp USING CAST(date AS timestamp without time zone)'
  end
end
