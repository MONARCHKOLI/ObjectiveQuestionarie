class Removecolumnfromuserresponses < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_responses, :answer_id
  end
end
