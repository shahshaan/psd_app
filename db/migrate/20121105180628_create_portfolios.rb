class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :name
      t.string :url
      t.string :image

      t.timestamps
    end
  end
end
