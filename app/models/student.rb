class Student < ApplicationRecord
  validates :name, length: { minimum: 1 }
  # validates :need_dormitory
  validates :experience, numericality: { minimum: 0 }
  # validates :was_teacher
  validates :what_graduated, length: { minimum: 1 }
  validates :language, length: { minimum: 1 }

  def self.bool_to_str(bool)
    if bool
      'Yes'
    else
      'No'
    end
  end
end
