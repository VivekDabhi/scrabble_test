# frozen_string_literal: true

class Player < ApplicationRecord
  # validations
  validates :first_name, :last_name, :phone_number, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  has_many :games

  def name
    "#{first_name} #{last_name}"
  end

  def total_winning_games
    games.where(winner: self)
  end

  def highest_score_details
    game = games.where(winner: self, winning_score: highest_score).first
    opponent = game&.participants&.where&.not(player_id: id)&.first&.player
    { highest_score: highest_score, game_name: game&.name, opponent: opponent&.name }
  end

  def ten_games_played?
    total_games_played >= 10
  end

  def total_games_played
    [wins, losses].sum
  end
end
