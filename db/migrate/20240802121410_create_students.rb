class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :fullname
      t.string :gender
      t.date :date
      t.string :contact
      t.string :church
      t.string :email
      t.text :responsibility
      t.text :description
      t.text :motivation
      t.text :challenges
      t.string :availability
      t.text :commitments
      t.text :achievements
      t.boolean :accepted_terms

      t.timestamps
    end
  end
end
