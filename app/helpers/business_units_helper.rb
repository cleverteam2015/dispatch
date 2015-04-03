module BusinessUnitsHelper
	def getDealerName (parent_id)
    Dealer.find(parent_id).name
  end
end
