class CreateStudies < ActiveRecord::Migration[5.0]
  def change
    create_table :studies do |t|
      t.string :title
      t.date :initdate
      t.date :enddate
      t.string :grade
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
