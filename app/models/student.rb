class Student < ApplicationRecord
  validates :cell_phone, :workphone, :home_phone,
    :numericality => {
      :message => 'can only contain numbers'
    },
    :length => {
      :is => 10,
      :message => 'number must be 10-digits'
    },
    :presence => {
      :message => 'please add a valid phone-number'
    }

  validates :first_name, inclusion: {
    :in => %w(andrew mike vanessa rita),
    :message => '%{value}, is not a valid name'
  }
end
