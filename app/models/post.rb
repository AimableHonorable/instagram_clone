class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user

  validate :any_present?

  def any_present?
    if %w(texts image).all?{|attr| self[attr].blank?}
      errors.add :base, "please post at least one field"
    end
  end
end
