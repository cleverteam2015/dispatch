module UsersHelper
	def getRoleName (id)
    Role.find(id).name
  end

	def getBUName (id)
    BusinessUnit.find(id).short_name
  end
end
