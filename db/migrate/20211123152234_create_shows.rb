class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :venue
      t.date :date
      t.time :loadin
      t.decimal :guarantee
      t.decimal :merch
      t.boolean :green_room
      t.text :wifi

      t.timestamps
    end
  end
end
