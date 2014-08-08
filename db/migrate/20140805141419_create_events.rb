class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :length
      t.string :stroke
      t.integer :meet_id

      t.timestamps
    end
  end
end
