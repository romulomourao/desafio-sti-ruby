class Repository
  attr_reader :database

  def initialize
    @database = []
  end
  
  def add(student)
    database.push(student)
  end

  def show
    database.each { |x| puts x }
  end

  def search(user_input)
    @database.detect {|item| item.registration == user_input}
  end


end
