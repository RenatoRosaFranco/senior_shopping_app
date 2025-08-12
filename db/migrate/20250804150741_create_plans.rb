class CreatePlans < ActiveRecord::Migration[8.0]
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :price_cents
      t.string :interval
      t.json :features
      t.integer :order

      t.timestamps
    end
  end
end
