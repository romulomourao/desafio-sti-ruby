module Generator

  DOMAIN = "@id.uff.br"

  def mail_generator(name)

    name = name.split(" ")
    options = []
    options.push(name.first + "_" + name[1] << DOMAIN)
    options.push(name.first + name.last << DOMAIN)
    options.push(name.last + name.first << DOMAIN)
    options.push(name.first[0] + name.last << DOMAIN)
    options.push(name.first[0] + "_" + name.last << DOMAIN)
    options.each.with_index(1) { |x,i| puts i.to_s + " - " + x }
    choice = gets.chomp
    options[choice.to_i - 1]
    
  end

end