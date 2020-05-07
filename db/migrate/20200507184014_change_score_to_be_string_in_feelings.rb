class ChangeScoreToBeStringInFeelings < ActiveRecord::Migration[6.0]
  def change
    change_column :feelings, :score, :string
  end
end
