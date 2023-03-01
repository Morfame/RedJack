class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :desc
      t.integer :value
      t.integer :altvalue
      t.boolean :ispic
      t.integer :play_id

      t.timestamps
    end
  end
end
