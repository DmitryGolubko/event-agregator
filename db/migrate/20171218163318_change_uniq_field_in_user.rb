class ChangeUniqFieldInUser < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :email, :string, unique: false
    change_column :users, :uid, :string, unique: true
  end
end
