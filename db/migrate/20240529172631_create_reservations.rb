class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.string :name, null: false
      t.string :date_in, null: false
      t.string :date_out, null: false
      t.references :inn_owner, null: false, foreign_key: true
      t.references :inn, null: false, foreign_key: true

      t.timestamps
    end
  end
end
