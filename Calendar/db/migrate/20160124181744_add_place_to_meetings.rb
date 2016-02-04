class AddPlaceToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :place, :string
  end
end
