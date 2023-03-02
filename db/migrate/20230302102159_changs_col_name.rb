class ChangsColName < ActiveRecord::Migration[7.0]
  def change
    rename_column :rooms, :plat1id, :play1_id
  end
end
