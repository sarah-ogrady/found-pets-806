class Pet < ApplicationRecord
  SPECIES = %w(dog horse chimpanzee chicken parrot capybara gecko giraffe snake human platypus)
  validates :species, inclusion: { in: SPECIES }
  validates :name, presence: true
  validates :age, presence: true
end
