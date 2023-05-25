class CreateUserResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_responses do |t|
      t.integer :user_id
      t.integer :questionarie_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
