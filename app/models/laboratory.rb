class Laboratory < ApplicationRecord
  has_and_belongs_to_many :exams
end
