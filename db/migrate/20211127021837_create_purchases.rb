class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.references :user, null: false, foreign_key: true
      t.monetize :amount, currency: { present: false }

      t.timestamps
    end
  end
end
