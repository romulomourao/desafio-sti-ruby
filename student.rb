

class Student
  attr_reader :name, :registration, :phone, :email, :uffmail, :status
  attr_writer :uffmail

  ACTIVE = "ATIVO"
  INACTIVE = "INATIVO"

  def initialize(name, registration, phone, email, uffmail, status)
    @name = name
    @registration = registration
    @phone = phone
    @email = email
    @uffmail = uffmail
    @status = status.upcase
  end

  def active?
    @status == ACTIVE
  end

end





