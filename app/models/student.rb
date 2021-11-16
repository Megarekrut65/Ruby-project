class Student < ApplicationRecord
  def self.bool_to_str(bool)
    if bool
      'Yes'
    else
      'No'
    end
  end
  validates :name, presence: true, length: { minimum: 1 }
  validates :need_dormitory, presence: true
  validates :experience, presence: true, numericality: { minimum: 0 }
  validates :was_teacher, presence: true
  validates :what_graduated, presence: true, length: { minimum: 1 }
  validates :language, presence: true, length: { minimum: 1 }
end
