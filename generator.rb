module Generator

	DOMAIN = "@id.uff.br"

	def mail_generator(name)
		name = name.split(" ")
		puts name[0] << DOMAIN
		puts name[1] << DOMAIN

	end

end
