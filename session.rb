require_relative 'repository'
class Session

  def init(db)

    puts "Digite sua matrícula: "
    registration = gets.chomp
    puts registration
    student = db.search(registration)
    options(student)

  end

  def options(student)
    puts "Olá, " + student.name
  end

end
