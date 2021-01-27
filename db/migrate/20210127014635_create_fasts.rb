class CreateFasts < ActiveRecord::Migration[6.0]
  def change
    create_table :fasts do |t|
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
