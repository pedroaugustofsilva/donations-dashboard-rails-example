class CreateCampaigns < ActiveRecord::Migration[7.2]
  def change
    create_table :campaigns do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
