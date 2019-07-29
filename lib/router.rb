require_relative 'controller'

class Router 

	def initialize 
		@controller  = Controller.new
	end

	def perform 
		puts "Bienvenue dans the gossip project"

		while true 

			puts " Tu veux faire quoi ?"
			puts " - 1 - Je veux crée un gossip"
			puts " - 2 - Je veux voir tout les potins !"
			puts " - 3 - Je veux supprimer un potin "
			puts " - 4 - Je veux quitter l'app"
			params = gets.chomp.to_i 

			case params
			when 1
				puts "Tu as choisi de créer un gossip "
				@controller.create_gossip
			when 2 
				puts " Voici la liste de tout les potins !"
				@controller.index_gossips
			when 3 
				puts " Voici la liste de tout les potins !"
				@controller.index_gossips
				puts " Lequel veux tu supprimer ? "
				suprr = gets.chomp.to_i
					case suprr
					when 1
					@controller.supr_gossip(1)
					when 2
					@controller.supr_gossip(2)
					when 3 
					@controller.supr_gossip(3)
					when 4
					@controller.supr_gossip(4)
					when 5 
					@controller.supr_gossip(5)
					when 6
					when 7 
					end


			when 4 
				puts "A bientot !"
				break 
			else 
				puts " Ce choic n'existe pas ... "
			end
		end
	end
end