class CreateFeelings < ActiveRecord::Migration[6.0]
  def change
    create_table :feelings do |t|
      t.references :user
      t.integer :score
      t.timestamps
    end
  end
end
