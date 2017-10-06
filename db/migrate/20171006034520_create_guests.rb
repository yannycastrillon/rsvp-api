class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :name
      t.boolean :is_confirmed
      t.boolean :is_editing

      t.timestamps
    end
  end
end
