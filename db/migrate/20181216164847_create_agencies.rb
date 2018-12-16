class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :tel
      t.string :telegram_channel
      t.string :instagram_page
      t.text :address
      t.integer :uuid
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
