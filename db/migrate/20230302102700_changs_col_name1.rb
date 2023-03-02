class ChangsColName1 < ActiveRecord::Migration[7.0]
  def change
    rename_column :rooms, :plat2id, :play2_id
    rename_column :rooms, :plat3id, :play3_id
    rename_column :rooms, :plat4id, :play4_id
    rename_column :rooms, :plat5id, :play5_id
    rename_column :rooms, :plat6id, :play6_id
    rename_column :rooms, :plat7id, :play7_id
    rename_column :rooms, :plat8id, :play8_id
    rename_column :rooms, :plat9id, :play9_id
  end
end
