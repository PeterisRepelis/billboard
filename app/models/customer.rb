class Customer < ActiveRecord::Base
  has_many :agreements
  validates :name, presence: true
end
