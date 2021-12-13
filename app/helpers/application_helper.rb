# frozen_string_literal: true

module ApplicationHelper
  def active_class(link_path)
    controller_name == link_path ? 'active' : ''
  end

  def page_title
    controller_name == 'leaderboards' ? t('leaderboard.title') : controller_name.titleize
  end
end
