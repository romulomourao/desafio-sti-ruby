module Generator

  DOMAIN = "@id.uff.br"

  def mail_generator(name)
    name = name.split(" ")
    puts name.first + "_" + name[1] << DOMAIN
    puts name.first + name.last << DOMAIN
    puts name.last + name.first << DOMAIN
    puts name.first[0] + name.last << DOMAIN
    puts name.first[0] + "_" + name.last << DOMAIN
  end

end

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

  def verify_status

    puts "Olá, " + name
    case status
    when "ATIVO"
      if uffmail
        puts "Você já possui uffmail: #{uffmail}"
      else
        puts "Escolha seu uffmail"
        mail_generator(name.downcase)
      end
    when "INATIVO"
      puts "Desculpe, seu usuário encontra-se inativo"
    end

  end

end





