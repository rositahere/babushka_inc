class AddGrannyToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :granny, foreign_key: true
  end
end
