class UserRole
  ROLES = {admin:"admin",writer:"writer",user:"user"}
  ROLES_USER = %w(admin writer user).freeze
  ROLES_WRITER = %w(admin writer).freeze

  def initialize(role)
    @role = role
  end

  def has_user?
    ROLES_USER.include? @role
  end

  def has_writer?
    ROLES_WRITER.include? @role
  end

  def eql?(other)
    to_s.eql?(other.to_s)
  end

  def to_s
    @role.to_s
  end
end