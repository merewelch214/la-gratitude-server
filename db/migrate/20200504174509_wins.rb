class Wins < ActiveRecord::Migration[6.0]
  def change
    create_table :wins do |t|
      t.references :user_id
      t.string :title 
      
      t.timestamps
    end
  end
end
