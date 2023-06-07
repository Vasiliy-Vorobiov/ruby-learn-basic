module Roles

  # синглтон методы. К нимможно обращаться через точку напрямую Roles.role_author
  class << self
    def role_guest
      'guest'
    end

    def role_author
      'author'
    end

    def role_admin
      'admin'
    end

    def role_modarator
      'modarator'
    end
  end
end

class User
  include Roles
  attr_reader :name, :role

  def initialize(name)
    @name = name
  end

  def say
    description
  end

  def to_s
    description
  end

  private

  def description
    "name #{name}, role  #{role}"
  end
end

class Guest < User
  def initialize(name)
    super name
    @role = Roles.role_guest
  end
end

class Author < User
  def initialize(name)
    super name
    @role = Roles.role_author
  end
end

user = Author.new 'gkjgkgjhgj'

puts user
