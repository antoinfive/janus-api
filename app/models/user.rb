class User < ActiveRecord::Base
  has_many :projects, dependent: :destroy
  has_many :stories, through: :projects
  has_many :snippets
  has_many :bookmarks
  validates_presence_of :username, :uid, :provider
  validates_uniqueness_of :username, :uid
  has_secure_password
  before_save :verify_auth_token

  def all_bookmarks
    self.projects.map{|project| project.bookmarks}.concat(self.bookmarks).flatten
  end

  def self.authenticate(credentials)
    user = self.find_by(email: credentials[:email])
    user if user && user.authenticate(credentials[:password])
  end

  private
  def verify_auth_token
    if auth_token.blank?
      self.auth_token = generate_auth_token
    end
  end

  def generate_auth_token
    loop do
      token = SecureRandom.urlsafe_base64(15)
      break token unless User.where(auth_token: token).any?
    end
  end
end
