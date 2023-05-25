class AddcolumntoUserResponse < ActiveRecord::Migration[5.2]
  def change
    add_column :user_responses, :response_ids, :string, default: [].to_yaml, array:true
  end
end
