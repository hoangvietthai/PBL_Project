class Job < ApplicationRecord
  belongs_to :user,  optional: true
  belongs_to :typejob, optional: true
  has_many :contacts
end