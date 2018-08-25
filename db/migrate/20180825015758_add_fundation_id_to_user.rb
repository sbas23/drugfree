class AddFundationIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :fundation, foreign_key: true
  end
end
