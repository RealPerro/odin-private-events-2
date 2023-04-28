class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.integer :attended_user_id
      t.integer :attended_event_id
      t.timestamps
    end
  end
end