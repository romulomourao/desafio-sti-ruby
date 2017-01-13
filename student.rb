class Student
	attr_reader :name, :registration, :phone, :email, :uffmail, :activity

    def initialize(name, registration, phone, email, uffmail, activity)
        @name = name
        @registration = registration
        @phone = phone
        @email = email
        @uffmail = uffmail
        @activity = activity == "Ativo"
    end
end



   
    