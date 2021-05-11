class AddStatusToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :status, :string, default: 'pending'

  end
end
