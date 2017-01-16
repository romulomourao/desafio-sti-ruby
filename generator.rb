class Generator

  DOMAIN = "@id.uff.br"

  def self.options_for(name)
    name = name.split(" ")
    options = []
    options.push(name.first + "_" + name[1] << DOMAIN)
    options.push(name.first + name.last << DOMAIN)
    options.push(name.last + name.first << DOMAIN)
    options.push(name.first[0] + name.last << DOMAIN)
    options.push(name.first[0] + "_" + name.last << DOMAIN)
    options
  end

end