class AddPasswordDigestAndAuthTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
    add_column :users, :auth_token, :string
    change_column :users, :email, :string, index: true
  end
end
