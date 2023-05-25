class Addcolumntouserresponse < ActiveRecord::Migration[5.2]
  def change
    add_column :user_responses, :response_ids, :text
  end
end
