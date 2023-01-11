class ChangePasswordDigestTypeAndLength < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :password_digest, :string, limit: 128
  end
end
