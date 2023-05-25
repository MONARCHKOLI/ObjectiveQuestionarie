class CreateQuestionaries < ActiveRecord::Migration[5.2]
  def change
    create_table :questionaries do |t|
      t.string :title
      t.string :question
      t.integer :banner_id
      t.string  :question_type

      t.timestamps
    end
  end
end
