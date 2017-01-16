require_relative 'repository'

class Session

  ACTIVE = "ATIVO"
  INACTIVE = "INATIVO"

  def init(db)

    puts "Digite sua matrícula: "
    registration = gets.chomp
    student = db.search(registration)
    student.verify_status

  end

end
