class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookings, :start_date, :checkin_on
    rename_column :bookings, :end_date, :checkout_on
  end
end


