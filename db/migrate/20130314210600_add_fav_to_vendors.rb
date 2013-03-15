class AddFavToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :fav, :boolean
  end
end
