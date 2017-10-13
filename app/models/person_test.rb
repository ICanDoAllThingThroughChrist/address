#require 'test_helper'
require 'minitest/autorun'
class PersonTest < Minitest::Test

test 'adresses_attributes='do
	params = {
		:person => {
		    :name => "charlie",
		      :adresses_attributes => [
		        {:street_address_1 =>  "1344",
		        :street_address_2 =>   " madewood",
	            :city => "houston",
	            :state => "tx",
		        :zipcode => "7789", 
		        :address_type => "home"
		    	}
		                              ]
				    }
			}

	  person = Person.new(params[:person]) 
	  person.save

	  assert_equal person.adresses.size, 1
	  assert_equal person.adresses.first.street_address_1, "1344"
	  assert_equal person.adresses.first.address_type, "home"
	 end
end
