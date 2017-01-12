require 'csv'
CSV.foreach('alunos.csv') do |row|
  puts row.inspect
end

#https://www.sitepoint.com/guide-ruby-csv-library-part/