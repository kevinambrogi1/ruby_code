class User
  @userId
  @name
  @email
  def initialize(id,name,email)
    @userId = id
    @name = name
    @email = email
  end

  def userInfo
    return @userId<<"  "<< @name <<" "<< @email
  end
end
