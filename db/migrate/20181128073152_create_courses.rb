class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :department
      t.integer :number
      t.integer :credits

      t.timestamps
    end
  end
end
