class CreateFuels < ActiveRecord::Migration[5.1]
  def change
    create_table :fuels do |t|
      t.decimal :num_litres
      t.decimal :price_litre
      t.decimal :total_cost

      t.timestamps
    end
  end
end
