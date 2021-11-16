class Student < ApplicationRecord
  def self.bool_to_str(bool)
    if bool
      'Yes'
    else
      'No'
    end
  end
end
