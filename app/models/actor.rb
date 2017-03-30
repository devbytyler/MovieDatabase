class Actor < ApplicationRecord
  has_many :roles, dependent: :destroy
  has_many :movies, -> { uniq }, through: :roles
end
