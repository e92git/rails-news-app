module Roleable
  extend ActiveSupport::Concern

  ROLES = {user:"user",writer:"writer",admin:"admin"}
  ROLES_TITLE = {"admin"=>"Администратор","writer"=>"Автор","user" => "Пользователь"}
  ROLES_USER = %w(admin writer user).freeze
  ROLES_WRITER = %w(writer).freeze

  included do
    enum role: ROLES, _suffix: true
    #scope :published, -> { where(deleted_at: nil) }
  end

  def has_user?
    ROLES_USER.include? role
  end

  def has_writer?
    ROLES_WRITER.include? role
  end

  def role_title
    ROLES_TITLE[role]
  end

end