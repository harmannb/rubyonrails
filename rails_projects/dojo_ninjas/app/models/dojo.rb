class Dojo < ActiveRecord::Base
  has_many :ninjas, dependent: :destroy
  validates :city, :name, :state, presence: true
  validates :state, length: { is: 2 }
end
