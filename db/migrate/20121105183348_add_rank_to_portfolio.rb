class AddRankToPortfolio < ActiveRecord::Migration
  def change
    add_column :portfolios, :rank, :integer
  end
end
