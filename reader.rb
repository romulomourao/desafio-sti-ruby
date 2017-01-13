require 'csv'
require_relative 'repository'
require_relative 'session'
require_relative 'student'

class Reader


  def readFile

    #puts "Nome do arquivo: "
    #filename = gets.chomp
    db = Repository.new
    CSV.foreach("alunos.csv", {:headers => true, :header_converters => :symbol}) do |row|
      student = row.to_hash
      db.add(Student.new(student[:nome],
      	student[:matricula],
      	student[:telefone],
      	student[:email],
      	student[:uffmail],
      	student[:status]
      	)
      )
    end
    Session.new.init(db)
  end

end


#https://www.sitepoint.com/guide-ruby-csv-library-part/
