class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
