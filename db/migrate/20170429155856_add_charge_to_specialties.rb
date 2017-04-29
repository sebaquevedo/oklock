class AddChargeToSpecialties < ActiveRecord::Migration[5.0]
  def change
    add_reference :specialties, :charge, foreign_key: true
  end
end
