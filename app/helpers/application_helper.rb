module ApplicationHelper
	def getName (parent_id)
    MainEntity.find(parent_id)
  end

end
