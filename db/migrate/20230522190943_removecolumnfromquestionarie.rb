class Removecolumnfromquestionarie < ActiveRecord::Migration[5.2]
  def change
    remove_column :questionaries, :title
  end
end
