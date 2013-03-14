class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :slug
      t.string :email
      t.string :website
      t.string :blog
      t.string :facebook
      t.string :twitter
      t.string :pineterest

      t.timestamps
    end
  end
end
