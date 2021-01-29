class CreateFasts < ActiveRecord::Migration[6.0]
  def change
    create_table :fasts do |t|
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
