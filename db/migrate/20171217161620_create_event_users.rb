class CreateEventUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :event_users do |t|

      t.timestamps
    end
  end
end
