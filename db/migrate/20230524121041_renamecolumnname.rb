class Renamecolumnname < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_responses, :questionarie_id, :banner_id
  end
end
