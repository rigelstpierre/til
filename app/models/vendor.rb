class Vendor < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  attr_accessible :blog, :email, :facebook, :name, :pineterest, :slug, :twitter, :website, :fav, :image,
                  :description

  mount_uploader :image, ImageUploader

  def should_generate_new_friendly_id?
    new_record?
  end
end
