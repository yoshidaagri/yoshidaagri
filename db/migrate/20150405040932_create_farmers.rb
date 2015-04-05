class CreateFarmers < ActiveRecord::Migration
  def change
    create_table :farmers do |t|
      t.integer :user_id
      t.integer :farmer_flg
      t.string :farm_name
      t.string :catchcopy
      t.string :representative
      t.text :management_content
      t.string :farm_banner
      t.text :farm_area
      t.string :zipcode
      t.string :address
      t.string :access
      t.string :tel
      t.string :fax
      t.string :twitter
      t.string :facebook
      t.string :googlemap

      t.timestamps null: false
    end
  end
end
