class CreateSpecialties < ActiveRecord::Migration[5.0]
  def change
    create_table :specialties do |t|
      t.string :title
      t.references :charge, foreign_key: true
      t.timestamps
    end
  end
end
