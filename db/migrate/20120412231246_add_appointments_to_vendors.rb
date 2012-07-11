class AddAppointmentsToVendors < ActiveRecord::Migration
  def change
    unless column_exists? :vendors, :allow_phone_appointments
      add_column :vendors, :allow_phone_appointments, :boolean
    end
    unless column_exists? :vendors, :allow_in_person_appointments
      add_column :vendors, :allow_in_person_appointments, :boolean
    end
  end
end