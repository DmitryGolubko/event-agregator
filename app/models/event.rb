class Event < ApplicationRecord
  has_many :comments
  geocoded_by :place
  after_validation :geocode
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :place, presence: true
  validates :date, presence: true
  validates :text, presence: true

  mount_uploader :logo, LogoUploader
end
