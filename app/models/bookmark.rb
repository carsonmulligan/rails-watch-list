# frozen_string_literal: true

class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates_uniqueness_of :movie, scope: :list
  ## validates that pairings are unique
  validates :comment, length: { minimum: 6 }
end
