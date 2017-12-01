class ChangePhoneNumberColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :phonenumber, :phone_number
  end
end
