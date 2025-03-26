class Renameragintorating < ActiveRecord::Migration[7.1]
  def change
    rename_column :reviews, :ragin, :rating
  end
end
