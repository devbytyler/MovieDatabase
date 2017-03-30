class Movie < ApplicationRecord
  has_many :roles, dependent: :destroy#, inverse_of: :actor, foreign_key: :actor_id
  has_many :actors, -> { distinct }, through: :roles

  validates_presence_of :title, :genre, :rating

  accepts_nested_attributes_for :roles, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :actors
end