# frozen_string_literal: true

class Participant < ApplicationRecord
  # relationships/associations
  belongs_to :game
  belongs_to :player
end
