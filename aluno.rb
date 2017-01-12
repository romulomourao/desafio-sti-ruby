class Aluno
    def initialize(name, registration, phone, email, uffmail, activity)
        @name = name
        @registration = registration
        @phone = phone
        @email = email
        @uffmail = uffmail
        @activity = activity == "Ativo" ? true : false
    end
end



   
    