class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.references :booking, null: false, foreign_key: true
      t.float :paid
      t.references :payment_method, null: false, foreign_key: true
      t.datetime :pay_time

      t.timestamps
    end
  end
end
