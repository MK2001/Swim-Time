class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :swimmer_id
      t.integer :meet_id

      t.timestamps
    end
  end
end
