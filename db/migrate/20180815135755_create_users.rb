class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :password
      t.bigint :document
      t.string :mail
      t.bigint :phone
      t.string :profession
      t.integer :id_fundation
      t.string :role
      t.integer :state

      t.timestamps
    end
  end
end
