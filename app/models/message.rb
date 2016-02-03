class Message < ApplicationRecord
  after_create { MessageBroadcastJob.perform_later self }
end
