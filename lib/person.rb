class Person
  attr_reader :name
#  attr_writer :
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end


def happiness= (points)
  if points < 0
    @happiness = 0
  elsif points >= 10
    @happiness = 10
  else
    @happiness = points
  end
end


 def happy?
   if @happiness > 7
     true
   else
     false
   end
 end


def hygiene=(points)
  if points < 0
    @hygiene = 0
  elsif points >= 10
    @hygiene = 10
  else
    @hygiene = points
  end
end


def clean?
  if @hygiene > 7
    true
  else
    false
  end
end


def get_paid(salary)
  @bank_account+=salary
return "all about the benjamins"
end


def take_bath
  self.hygiene +=4
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end


def work_out
  self.hygiene -=3
  self.happiness +=2
  return "♪ another one bites the dust ♫"
end

def call_friend(friend)
  [friend, self].each {|person| person.happiness += 3}
  "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
  if topic == "politics"
    person.happiness -=2
    self.happiness -=2
    "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    person.happiness +=1
    self.happiness +=1
    "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
  end
end



end
