class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :pacient, null: false
      t.string :title, null: false
      t.string :doctor
      t.text :description
      t.string :address, null: false
      t.timestamp :date, null: false
      t.belongs_to :user
      t.timestamps
    end
  end
end
