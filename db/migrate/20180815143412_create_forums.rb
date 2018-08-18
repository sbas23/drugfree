class CreateForums < ActiveRecord::Migration[5.2]
  def change
    create_table :forums do |t|
      t.string :question
      t.string :answer
      t.integer :professional_user

      t.timestamps
    end
  end
end
