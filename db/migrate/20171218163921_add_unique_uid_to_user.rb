class AddUniqueUidToUser < ActiveRecord::Migration[5.1]
  def change
    remove_index :users, :email
    add_index(:users, :uid, unique: true)
  end
end
