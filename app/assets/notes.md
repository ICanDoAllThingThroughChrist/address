we know we need 2 addresses. how to structure params

params = {
	:person => {
	    :name => { "charlie"
	    :adresses_attributes => [
	        :street_address_1 => { "1344"}
            :street_address_2 => { " madewood"}
            :city => {"houston"}
            :state => {"tx"}
	        :zipcode => {"7789"} 
	        :address_type => {"home"}
	                            ]
			     }
			  }
		    :team_name => "Gods Elect"
		    :new_team_attributes =>{
		    :name => {""}.         }
          }


    def team_name=(name)
    #find that team by name
   	end 
   	def new_team_attributes(team_attributes)
   	#create a team by name and set attributes
   	end	
User.new(params)#every key has a writer
User.save

