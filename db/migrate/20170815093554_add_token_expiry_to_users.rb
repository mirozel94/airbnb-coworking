class AddTokenExpiryToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :token_expiry, :datetime
  end
end
