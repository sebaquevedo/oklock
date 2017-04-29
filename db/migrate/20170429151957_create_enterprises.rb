class CreateEnterprises < ActiveRecord::Migration[5.0]
  def change
    create_table :enterprises do |t|
      t.string :name
      t.string :type
      t.string :industry
      t.string :ticker
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
