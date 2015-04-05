json.array!(@farmers) do |farmer|
  json.extract! farmer, :id, :user_id, :farmer_flg, :farm_name, :catchcopy, :representative, :management_content, :farm_banner, :farm_area, :zipcode, :address, :access, :tel, :fax, :twitter, :facebook, :googlemap
  json.url farmer_url(farmer, format: :json)
end
