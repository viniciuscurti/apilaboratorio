class CreateJoinTableLaboratoryExam < ActiveRecord::Migration[6.1]
  def change
    create_join_table :laboratories, :exams do |t|
      # t.index [:laboratory_id, :exam_id]
      # t.index [:exam_id, :laboratory_id]
    end
  end
end
