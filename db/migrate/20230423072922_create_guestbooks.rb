class CreateGuestbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :guestbooks do |t|
      t.string :name
      t.text :message

      t.timestamps
    end
  end
end
