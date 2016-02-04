class AddNoteToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :note, :string
  end
end
