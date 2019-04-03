class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(number)
    @happiness = number
    @happiness = 0 if number < 0
    @happiness = 10 if number > 10
  end

  def hygiene=(number)
    @hygiene = number
    @hygiene = 0 if number < 0
    @hygiene = 10 if number > 10
  end

end