class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :number
      t.string :vendor
      t.date :date
      t.decimal :total_amount

      t.timestamps
    end
  end
end
