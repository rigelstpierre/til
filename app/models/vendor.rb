class Vendor < ActiveRecord::Base
  attr_accessible :blog, :email, :facebook, :name, :pineterest, :slug, :twitter, :website
end
