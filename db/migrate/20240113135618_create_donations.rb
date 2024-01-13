class CreateDonations < ActiveRecord::Migration[7.2]
  def change
    create_table :donations do |t|
      t.string :donor_name, null: false
      t.money :amount
      t.references :campaign, null: false, foreign_key: true
      t.string :status, null: false

      t.timestamps
    end
  end
end
