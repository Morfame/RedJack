class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.text :role
      t.integer :rank
      t.boolean :insess

      t.timestamps
    end
  end
end
