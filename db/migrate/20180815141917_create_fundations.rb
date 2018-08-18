class CreateFundations < ActiveRecord::Migration[5.2]
  def change
    create_table :fundations do |t|
      t.string :fundation_name
      t.string :address
      t.bigint :phone
      t.string :mail

      t.timestamps
    end
  end
end
