class ContractPdf < Prawn::Document

def initialize(contract, view)
  super()
  @contract = contract
  @view = view
  text "ZCode Contract #{@contract.id}"
  text "Contract Name: #{@contract.name}"
  text "Advertiser Name: #{@contract.advertiser}"
end

end