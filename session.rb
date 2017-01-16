require_relative 'repository'

class Session

  ACTIVE = "ATIVO"
  INACTIVE = "INATIVO"

  def init(db)

    while true
      puts "Digite sua matrícula: "
      registration = gets.chomp
      student = db.search(registration)
      if student
        student.verify_status
      else
        puts "Matricula inexistente \n"
      end

    end

  end

end
