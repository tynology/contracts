class ContractPdf < Prawn::Document

def initialize(contract, view)
  super()
  @contract = contract
  @view = view
  image "#{Rails.root}/app/assets/images/contract.png", :width => 540, :at => [0, cursor]
  move_down 71
    indent(32) do
      text "#{@contract.date.strftime("%m/%d/%Y")}", :size => 8
    end
  move_down 5
      indent(52) do
        text "#{@contract.advertiser}", :size => 8

        bounding_box([275, cursor + 10], :width => 100) do
        text "#{@contract.contact}", :size => 8
        end
      end
 move_down 6
    indent(78) do
      text "#{@contract.address}", :size => 8
    end
  move_down 5
    indent(29) do
      text "#{@contract.city}", :size => 8
        
        bounding_box([267, cursor + 9], :width => 100) do
          text "#{@contract.state}", :size => 8
        end
        
        bounding_box([409, cursor + 9], :width => 100) do
          text "#{@contract.zip}", :size => 8
        end
    end
  move_down 5
  indent(38) do
    text "#{@contract.phone}", :size => 8
      bounding_box([267, cursor + 9], :width => 100) do
        text "#{@contract.fax}", :size => 8
      end
  end
  move_down 5
  indent(36) do
    text "#{@contract.email}", :size => 8
  end
end



end