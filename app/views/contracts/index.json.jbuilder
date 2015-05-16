json.array!(@contracts) do |contract|
  json.extract! contract, :id, :name, :advertiser
  json.url contract_url(contract, format: :json)
end
