class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.integer :id_user
      t.date :start_date
      t.date :end_date
      t.integer :state

      t.timestamps
    end
  end
end
