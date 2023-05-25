class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :questionarie_id
      t.string :answer
      t.boolean :correct, :default => false, null: false    

      t.timestamps
    end
  end
end
