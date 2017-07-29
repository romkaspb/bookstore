class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.references :store, foreign_key: true
      t.references :book, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
