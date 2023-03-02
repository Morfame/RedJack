class AddPlay1idToRoom < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :plat1id, :integer
    add_column :rooms, :plat2id, :integer
    add_column :rooms, :plat3id, :integer
    add_column :rooms, :plat4id, :integer
    add_column :rooms, :plat5id, :integer
    add_column :rooms, :plat6id, :integer
    add_column :rooms, :plat7id, :integer
    add_column :rooms, :plat8id, :integer
    add_column :rooms, :plat9id, :integer
  end
end
