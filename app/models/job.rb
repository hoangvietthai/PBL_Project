class Job < ApplicationRecord
  belongs_to :user
  belongs_to :typejob
  has_many :contacts
end