class CreateRates < ActiveRecord::Migration[7.0]
  def change
    create_table :rates do |t|
      t.string :description
      t.decimal :amount

      t.timestamps
    end
  end
end
