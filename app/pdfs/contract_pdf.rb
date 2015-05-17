class ContractPdf < Prawn::Document

def initialize(contract, view)
  super()
  @contract = contract
  @view = view
  text "ZCode Contract #{@contract.id}"
  text "Contract Date: #{@contract.date}"
  text "Contract Name: #{@contract.name}"
  text "Advertiser Name: #{@contract.advertiser}"
  text "Advertiser Contact: #{@contract.contact}"
  text "Advertiser Address: #{@contract.address}, #{@contract.city}, #{@contract.state} #{@contract.zip}"
  text "Phone: #{@contract.phone}"
  text "Fax: #{@contract.fax}"
  text "Email: #{@contract.email}"
end

end