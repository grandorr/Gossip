class Gossip 
	require "csv"
	attr_reader :author, :content

	def initialize(author, content)
		@content = content
		@author = author
	end

	def save 
		require "csv"
		CSV.open("db/gossip.csv", "a+") do |csv|
  		csv << [@author, @content]
		end
	end

	def self.all
		all_gossips = []
		csv = CSV.open("db/gossip.csv")


    csv.each do |ligne|
    	gossip_provisoire = Gossip.new(ligne,ligne)
    	all_gossips << gossip_provisoire
    end
    return all_gossips
  end







end