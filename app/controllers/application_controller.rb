class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :set_notification_counts

  private

  def set_notification_counts
    if user_signed_in? && current_user.hypixel_user.present?
      @unread_messages_count = 0
      @unread_notifications_count = 0
    end
  end
end
