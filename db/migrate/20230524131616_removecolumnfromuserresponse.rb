class Removecolumnfromuserresponse < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_responses, :response_ids
  end
end
