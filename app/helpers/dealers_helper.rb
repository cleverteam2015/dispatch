module DealersHelper
	def getName (parent_id)
    MainEntity.find(parent_id).name
  end

end
