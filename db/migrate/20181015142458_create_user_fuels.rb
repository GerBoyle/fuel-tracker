class CreateUserFuels < ActiveRecord::Migration[5.1]
  def change
    create_table :user_fuels do |t|
      t.references :user, foreign_key: true
      t.references :fuel, foreign_key: true

      t.timestamps
    end
  end
end
