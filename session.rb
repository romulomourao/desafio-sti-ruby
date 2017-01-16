require_relative 'repository'
require_relative 'generator'
class Session

  def init(db)

    while true
      student = search_student(db)
      return matricula_inexistente unless student
      uffmail_generation(student)
      show_infos(student)
    end

  end

  private

  def search_student(db)
    puts "Digite sua matrícula: "
    db.search(gets.chomp)
  end

  def matricula_inexistente
    puts "Matricula inexistente \n"
  end

  def uffmail_generation(student)
    return inactive_student unless student.active?
    return student_has_uffmail(student) if student.uffmail
    generate_uffmail(student)
  end

  def inactive_student
    puts "Desculpe, seu usuário encontra-se inativo"
  end

  def student_has_uffmail(student)
      puts "Você já possui uffmail: #{student.uffmail}"
  end

  def show_infos(student)
    puts student.registration + " - " + student.name
    puts "UFFmail: #{student.uffmail}"
  end

  def generate_uffmail(student)
    puts "Escolha seu uffmail"
    options = Generator.options_for(student.name.downcase)
    options.each.with_index(1) { |x,i| puts i.to_s + " - " + x }
    choice = gets.chomp
    selected = options[choice.to_i - 1]
    student.uffmail = selected
  end


end
