class User < ApplicationRecord
  extend FriendlyId
  friendly_id :username, use: :slugged

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  attr_accessor :login

  scope :popular, -> {select("users.id, users.slug, users.username, count(follows.id) follows_count").joins(:followers).group("users.id").reorder("follows_count desc")}

  enum status: [:free, :premium]

  has_many :active_follows, class_name: "Follow", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_follows, class_name: "Follow", foreign_key: "followed_id", dependent: :destroy
  has_many :following, through: :active_follows,  source: :followed
  has_many :followers, through: :passive_follows, source: :follower

  validates :username, presence: true, uniqueness: true, length: { maximum: 50 }, format: { with: /\A[a-zA-Z0-9]+\Z/i }, exclusion: { in: %w{ login logout about terms privacy signin signout admin administrator cryptolovesh2o posts faq discover} }
  validate :validate_username

  before_save :downcase_username
  before_save :username_slug

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end

  # follow a user
  def follow(user_to_follow)
    following << user_to_follow
  end

  # unfollow a user
  def unfollow(user_to_unfollow)
    following.delete(user_to_unfollow)
  end

  # are we following this user?
  def following?(user)
    following.include?(user)
  end

  # get the pesky model follow id
  def follow_id(follower)
    Follow.find_by(followed_id: id, follower_id: follower.id).id
  end

  # get a list of posts from the users you follow
  #def feed
  #  following_ids = "SELECT followed_id FROM follows WHERE follower_id = :user_id"
  #  UPost.where("user_id IN (#{following_ids}) OR user_id = :user_id", user_id: id)
  #end

  private

    def downcase_username
      self.username = username.downcase
    end

    def username_slug
      self.slug = self.username if self.slug.blank?
    end
    
end
