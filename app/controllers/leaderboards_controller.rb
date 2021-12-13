# frozen_string_literal: true

class LeaderboardsController < ApplicationController
  def index
    @collection = Player.select(&:ten_games_played?)
  end
end
