class AddWebLinksToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :weblinks, :string
  end
end
