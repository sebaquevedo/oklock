class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.integer :value
      t.string :geo_zone

      t.timestamps
    end
  end
end
