class Guestbook < ApplicationRecord
  validates :name, :message, presence: true
end
