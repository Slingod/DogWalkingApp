class Dog < ApplicationRecord
    belongs_to :city
    has_many :strolls
    has_many :dog_sitters, through: :strolls
end
