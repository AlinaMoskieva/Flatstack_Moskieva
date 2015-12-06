class AddUserRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :comment, :user, index: true, foreign_key: true
  end
end
