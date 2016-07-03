class CreatePortfolio < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :text
    end
  end
end
