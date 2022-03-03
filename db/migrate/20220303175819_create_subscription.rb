class CreateSubscription < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.decimal :price, precision: 9, scale: 2
      t.integer :status
      t.integer :frequency

      t.timestamps
    end
  end
end
