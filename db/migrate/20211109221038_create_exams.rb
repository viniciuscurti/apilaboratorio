class CreateExams < ActiveRecord::Migration[6.1]
  def change
    create_table :exams do |t|
      t.string :name
      t.string :exam_type
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
