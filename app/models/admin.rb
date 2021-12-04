class Admin < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: :slugged

  attr_accessor :login

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validate :limit_number_of_admins?
  validate :check_admin_email?

  before_save :generated_slug

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(email) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:email) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end

  private

    def generated_slug
      require 'securerandom' 
      self.slug = SecureRandom.hex(10) if slug.blank?
    end

    def limit_number_of_admins?
      if Admin.count >= 1
        errors.add(:base, :invalid)
        return false
      end
    end

    def check_admin_email?
      unless self.email == "aheil4250@gmail.com"
        errors.add(:email, :invalid)
        return false
      end
    end
    
end
