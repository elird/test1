class CreateHoursHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :hours_histories do |t|
      t.time :entry_time
      t.time :departure_time
      t.float :total_hours
      t.float :extra_hours
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
