require 'file_size_validator'
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_skill_tags, dependent: :destroy

  mount_uploader :profile_thumbnail, ProfileThumbnailUploader

  validates :profile_thumbnail,
      file_size: { maximum: 1.megabytes.to_i, allow_nil: true }
end
