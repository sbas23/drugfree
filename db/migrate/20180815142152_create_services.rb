class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :service_name
      t.string :description
      t.bigint :cost

      t.timestamps
    end
  end
end
