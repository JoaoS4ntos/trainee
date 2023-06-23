class AddAuthenticationTolkenToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :authentication_tolken, :string, limit: 30
    add_index :users, :authentication_tolken, unique: true
  end
end
