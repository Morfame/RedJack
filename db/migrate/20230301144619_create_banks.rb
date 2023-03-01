class CreateBanks < ActiveRecord::Migration[7.0]
  def change
    create_table :banks do |t|
      t.integer :amt
      t.integer :play_id

      t.timestamps
    end
  end
end
