class CreateSectionsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :sections_students, id: false do |t|
      t.references :section, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true

      t.timestamps
    end

  add_index :sections_students, :section_id
  add_index :sections_students, :student_id
  end
end
