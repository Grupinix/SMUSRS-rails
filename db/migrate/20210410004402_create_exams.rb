class CreateExams < ActiveRecord::Migration[6.1]
  def change
    create_table :exams do |t|
      t.string :name
      t.string :title
      t.text :description
      t.string :address
      t.timestamp :date
      t.belongs_to :user
      t.timestamps
    end
  end
end
