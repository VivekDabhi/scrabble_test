# frozen_string_literal: true

class Game < ApplicationRecord
  # validations
  validates :name, presence: true

  # relationships/associations
  has_many :participants
  belongs_to :winner, class_name: 'Player', foreign_key: :player_id

  accepts_nested_attributes_for :participants, reject_if: :all_blank

  after_commit :update_player, on: :create

  def participants_name
    participants.map { |participant| participant.player.name }
  end

  private

  def update_player
    loser_id = participants.pluck(:player_id).excluding(winner.id)
    loser = Player.where(id: loser_id).first
    loser.losses += 1
    loser.save

    high_score = winning_score > winner.highest_score ? winning_score : winner.highest_score
    winner.highest_score = high_score
    winner.wins += 1
    winner.average_score = (winner.total_winning_games.sum(:winning_score) / winner.wins)
    winner.save
  end
end
