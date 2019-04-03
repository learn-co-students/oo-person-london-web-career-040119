class Person
  attr_reader :name, :bank_account, :happiness, :hygiene
  attr_writer :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

def bank_account
  @bank_account
end

def happiness=(num = 8)
  if num >= 0 && num <= 10
    @happiness = num
  elsif num < 0
    @happiness = 0
  elsif num > 10
    @happiness = 10
  end
end

def hygiene=(num = 8)
  if num >= 0 && num <= 10
    @hygiene = num
  elsif num < 0
    @hygiene = 0
  elsif num > 10
    @hygiene = 10
  end
end

def happy?
    if @happiness > 7
      true
    else
      false
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
    @bank_account += salary
    "all about the benjamins"
end

def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene -= 3
  self.happiness += 2
  "♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  "Hi #{friend}! It's #{self}. How are you?"
end

def to_s
  name
end

def start_conversation(partner, topic)
  if topic == "politics"
     partner.happiness -= 2
     self.happiness -= 2
     "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    partner.happiness += 1
    self.happiness += 1
    "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
  end
end

end
