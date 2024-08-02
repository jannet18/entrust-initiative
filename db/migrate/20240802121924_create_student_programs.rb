class CreateStudentPrograms < ActiveRecord::Migration[7.1]
  def change
    create_table :student_programs do |t|
      t.integer :student_id
      t.integer :programs_id

      t.timestamps
    end
  end
end
