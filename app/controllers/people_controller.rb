class PeopleController < ApplicationController
  def new
    @person = Person.new
    @person.adresses.build(address_type: 'permit1')
    @person.adresses.build(address_type: 'permit2')
    @person.adresses.build(address_type: 'permit3')
    @person.adresses.build(address_type: 'permit4')
    @person.adresses.build(address_type: 'permit5')
    @person.build_team
  end
 
  def create
    # raise params.inspect
    @person = Person.create(person_params)
    if @person.save#is saved correctly
      redirect_to @person#take to url /person/@user_id
    else 
      render :new 
    end
  end
 
  def index
    @people = Person.all
  end
 
  private
 
  def person_params#
    params.require(:person).permit(:name,:adresses_attributes => [:street_address_1, :street_address_2, :city,:state,:zipcode,:address_type],:team_attributes => [:name, :hometown])
  end
end