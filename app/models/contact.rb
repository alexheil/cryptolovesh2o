class Contact < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: :slugged

  validates :display_name, presence: true, length: { maximum: 255 }
  validates :title, presence: true, length: { maximum: 255 }
  validates :content, presence: true, length: { in: 5..65536 }
  validates :email, presence: true, length: { maximum: 255 }

  before_save :generated_slug

  private

    def generated_slug
      require 'securerandom' 
      self.slug = SecureRandom.hex(6) if slug.blank?
    end

end
