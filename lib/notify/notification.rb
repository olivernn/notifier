require 'json'

module Notify
  class Notification

    DEFAULT_GROUP = "notify"
    ATTRIBUTES = %i(message title subtitle group)

    def self.parse(raw)
      attrs = JSON.parse(raw, symbolize_names: true)
      new(attrs)
    end

    attr_reader *ATTRIBUTES

    def initialize(attrs = {})
      @message = attrs.fetch(:message)
      @title = attrs[:title]
      @subtitle = attrs[:subtitle]

      @group = attrs.fetch(:group) { DEFAULT_GROUP }
    end

    def to_h
      ATTRIBUTES.each_with_object({}) do |attr, h|
        val = send(attr)
        h[attr] = val unless val.nil?
      end
    end
  end
end
