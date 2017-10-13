class Person < ActiveRecord::Base
  has_many :adresses
  belongs_to :team
  # accepts_nested_attributes_for :adresses
	def adresses_attributes=(adresses_attributes)
		# adresses_attributes = {
	 	#        street_address_1 ={ "1344"}
	  	#        street_address_2 ={ " madewood"}
	  	#        city = {}
	  	#        state = {}
	 	#        zipcode = {} 
	 	#        address_type = {}
	 	#        person_id = {}
	 	#                            }
		 # raise adresses_attributes.inspect
			adresses_attributes.each do |i, adress|
				#want to create an adress attributes for each person
		 self.adresses.build(adress)
		end
	end 
	def team_attributes=(team_attributes)
		self.team = Team.where(:name => team_attributes[:name]).first_or_create do |t|
			t.hometown = team_attributes[:hometown]
		end
	end
# class Person < ActiveRecord::Base
#   has_many :addresses
#   accepts_nested_attributes_for :addresses 
end