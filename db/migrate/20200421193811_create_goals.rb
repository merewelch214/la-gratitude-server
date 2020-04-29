class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.references :user
      t.string :title
      t.string :description
      t.datetime :completed_at

      t.timestamps
    end
  end
end
