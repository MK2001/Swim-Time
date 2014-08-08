class CreateTimes < ActiveRecord::Migration
  def change
    create_table :swimmer_times do |t|
      t.string :duration
      t.integer :swimmer_id
      t.integer :event_id

      t.timestamps
    end
  end
end
