json.array!(@listings) do |listing|
  json.extract! listing, :id, :address, :square_footage, :beds, :bathrooms, :date_on_market, :for_sale_by_owner
  json.url listing_url(listing, format: :json)
end
