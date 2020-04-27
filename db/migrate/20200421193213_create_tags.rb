class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.references :user
      t.string :category 

      t.timestamps
    end
  end
end
