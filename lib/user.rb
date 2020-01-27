require 'pry'
class User

  attr_accessor :email, :age
  @@array_of_users = []

  def initialize(email, age)
    @email = email
    @age = age
    @@array_of_users << self

  end

  def self.all
    return @@array_of_users
  end

  def self.find_by_email(mail)
    @@array_of_users.each {|user| puts "#{@age}" if mail == @email}
  end
end

binding.pry

# User.new("julie@julie.com", 35)
# User.new("jean@jean.com", 23)
# User.new("claude@claude.com", 75)

# puts User.find
