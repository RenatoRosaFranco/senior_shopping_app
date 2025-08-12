class CreateNewsletters < ActiveRecord::Migration[8.0]
  def change
    create_table :newsletters do |t|
      t.string :email
      t.boolean :active
      t.string :token

      t.timestamps
    end
  end
end
