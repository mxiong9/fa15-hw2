class PagesController < ApplicationController
  def home
    foo = Foobar.new "baz"
    @baz = foo.bar :cat, sat: :dat, dat: :sat
  end

  def stringify
    if params[:name].length > 0 and params[:adjective].length > 0
      @text = "#{params[:name]} is so #{params[:adjective]}"
    else
      @text = "You are nothing!"
    end
  end

  def age
  end

  def person
    if params[:name].length > 0 and params[:age].length > 0
      @age = params[:age]
      @name = params[:name]
    else
      @age = 0
      @name = "Nobody"
    end
    person = Person.new(@name, @age)
    @nickname = person.nickname
    @introduction = person.introduce
    @birth_year = person.birth_year
  end
end
