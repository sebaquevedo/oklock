class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :languages do |t|
      t.string :language
      t.string :proficiency
      t.boolean :certificate
      t.string :system_of_measure
      t.integer :score
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
