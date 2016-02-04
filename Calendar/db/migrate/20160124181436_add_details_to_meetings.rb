class AddDetailsToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :details, :string
  end
end
