class AddPhoneNumberToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :phonenumber, :string
  end
end
