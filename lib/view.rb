class View

	def create_gossip 
		puts " L'auteur?"
		@auteur = gets.chomp
		puts " Le contenu ?"
		@contenu = gets.chomp 
		return params = { content: @contenu, author: @auteur}
	end

	def index_gossips(gossips)
		number = 0
		gossips.each do |gossip|
			number += 1
			puts "#{number} - #{gossip.content}"
		end
	end



	 def supr(tab_gossip,number)
  	number -= 1 

	  csv = CSV.open("db/gossip.csv", "w")
	  	tab_gossip.each do |gossip|
	  	 	if gossip == tab_gossip[number]
	  	 		puts "Vous venez de supprimer : #{gossip.content}"
	  	 	else
	  	 	CSV.open("db/gossip.csv", "a+") do |csvv|
	  	 	csvv << gossip.content
	  	 end
	  	  end
	  	end






	 end
end