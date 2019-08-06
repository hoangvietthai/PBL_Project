class Job < ApplicationRecord
  has_many :users
  belongs_to :typejob
  has_many :contacts
end