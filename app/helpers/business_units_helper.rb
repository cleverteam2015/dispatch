module BusinessUnitsHelper
	def getBUName (parent_id)
    Dealer.find(parent_id).name
  end
end
