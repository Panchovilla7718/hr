class Supervisor < ActiveRecord::Base
    has_many :openings
    before_save {self.email = email.downcase}
  validates :name, presence: true, length: {minimum: 5, maximum: 50}
  validates :email, presence: true, 
                    uniqueness: {case_sensitive: false}
  validates :plant, presence: true, length: {minimum: 5, maximum: 30}
end