class CreateCharges < ActiveRecord::Migration[5.0]
  def change
    create_table :charges do |t|
      t.string :title
      t.string :summary
      t.date :start_date
      t.date :end_date
      t.boolean :is_current
      t.references :enterprise, foreign_key: true
      t.string :org_level
      t.string :market_responsability

      t.timestamps
    end
  end
end
