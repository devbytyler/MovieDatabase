class Role < ApplicationRecord
  belongs_to :movie
  belongs_to :actor

  accepts_nested_attributes_for :actor, :reject_if => :all_blank
end
