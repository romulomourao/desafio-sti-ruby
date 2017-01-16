class Repository

  @@database = []

  def add(student)
    @@database.push(student)
  end

  def show
    @@database.each do |x|
      puts x
    end
  end

  def search(userInput)

    @@database.each do |item|

      if item.registration == userInput
        return item
      end

    end

  end


end
