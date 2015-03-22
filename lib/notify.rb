require "notify/version"
require "notify/notification"

require "terminal-notifier"

module Notify
  def self.notify(raw)
    notification = Notification.parse(raw)
    TerminalNotifier.execute(false, notification.to_h)
  end
end
