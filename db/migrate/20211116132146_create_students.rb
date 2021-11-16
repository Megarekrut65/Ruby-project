class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.boolean :need_dormitory
      t.integer :experience
      t.boolean :was_teacher
      t.string :what_graduated
      t.string :language

      t.timestamps
    end
  end
end
