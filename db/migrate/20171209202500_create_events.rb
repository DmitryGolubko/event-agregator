class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :text
      t.string :date
      t.string :place
      t.timestamps
    end
  end
end
