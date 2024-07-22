class Phrase < ApplicationRecord
  validates :english, presence: true
  validates :japanese, presence: true
end
