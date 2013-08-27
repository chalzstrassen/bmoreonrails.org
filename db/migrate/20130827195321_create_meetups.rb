class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |t|
      t.string :remote_id, null: false
      t.string :event_url, null: false
      t.text :description
      t.text :how_to_find_us
      t.datetime :time
      t.string :name, null: false
      t.string :venue_name
      t.string :venue_address_1
      t.string :venue_address_2
      t.string :venue_city
      t.string :venue_state
      t.string :venue_zip
      t.float :venue_lon
      t.float :venue_lat
    end
  end
end
