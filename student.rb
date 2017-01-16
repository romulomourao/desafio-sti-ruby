require_relative 'generator'

class Student
  include Generator
  attr_reader :name, :registration, :phone, :email, :uffmail, :status
  attr_writer :uffmail

  def initialize(name, registration, phone, email, uffmail, status)
    @name = name
    @registration = registration
    @phone = phone
    @email = email
    @uffmail = uffmail
    @status = status.upcase
  end

  def show_infos
    puts registration + " - " + name
    puts "UFFmail: " << uffmail

  end

  def verify_status

    puts "Olá, " + name
    case status
    when "ATIVO"
      if uffmail
        puts "Você já possui uffmail: #{uffmail}"
      else
        puts "Escolha seu uffmail"
        @uffmail = mail_generator(name.downcase)
        show_infos
      end
    when "INATIVO"
      puts "Desculpe, seu usuário encontra-se inativo"
    end

  end

end





