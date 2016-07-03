class AddPortfolioToTaggings < ActiveRecord::Migration
  def change
    add_reference :taggings, :portfolio, index: true, foreign_key: true
  end
end
