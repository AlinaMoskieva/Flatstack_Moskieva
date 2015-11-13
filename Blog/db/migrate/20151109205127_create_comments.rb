class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :post, index: true, foreign_key: true
#t.references создает числовой столбец с именем article_id, индекс для него, и
#ограничение внешнего ключа, указывающего на столбец id таблицы articles.
      t.timestamps null: false
    end
  end
end
