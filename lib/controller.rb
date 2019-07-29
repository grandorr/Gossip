require_relative 'gossip'
require_relative 'view'

class Controller
	def initialize 
		@view = View.new
	end


	def create_gossip 
		params = @view.create_gossip
		gossip = Gossip.new(params[:content], params[:author])
		gossip.save 
	end

	def index_gossips
     tab_gossips = Gossip.all
     @view.index_gossips(tab_gossips)
	end

	def supr_gossip(number)
		tab_gossips = Gossip.all
		@view.supr(tab_gossips, number)
	end

end
