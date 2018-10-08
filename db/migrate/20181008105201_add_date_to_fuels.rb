class AddDateToFuels < ActiveRecord::Migration[5.1]
  def change
    add_column :fuels, :date, :date
  end
end
