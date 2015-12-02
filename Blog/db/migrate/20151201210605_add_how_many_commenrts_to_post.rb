class AddHowManyCommenrtsToPost < ActiveRecord::Migration
  def change
    add_column :posts, :how_many_comments, :integer, default: 0
  end
end
