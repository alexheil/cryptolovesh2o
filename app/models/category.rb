class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  default_scope -> { order('categories.title ASC') }

  # change to change category color
  enum time_period: [:time_period_0, :time_period_1]
  
  has_many :posts

  validates :title, presence: true, length: { maximum: 255 }

  before_save :should_generate_new_friendly_id?, if: :title_changed?
   
  private

    def should_generate_new_friendly_id?
      title_changed?
    end

end
