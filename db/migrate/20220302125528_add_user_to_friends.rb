class AddUserToFriends < ActiveRecord::Migration[7.0]
  def change
    add_reference :friends,:user ,foreign_key:true,index:true
  end
end
