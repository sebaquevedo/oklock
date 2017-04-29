class CreateSocials < ActiveRecord::Migration[5.0]
  def change
    create_table :socials do |t|
      t.string :name
      t.string :link
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
