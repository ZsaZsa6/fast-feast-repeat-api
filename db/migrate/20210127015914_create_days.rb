class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.string :name_of_day
      t.date :date
      t.integer :total_hours_fasted


      t.timestamps
    end
  end
end
