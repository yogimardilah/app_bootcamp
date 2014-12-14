class AddStatusArticle < ActiveRecord::Migration
  def change
  	add_column :articles, :status, :string
  	add_column :articles, :categori, :string
  	rename_column :articles, :category , :category

  end
end
