class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name, bank_account = 25, happ_val = 8, hyg_val = 8)

    @name = name
    @bank_account = bank_account
    @happiness = happ_val
    @hygiene = hyg_val
  end


def happiness= (happ_val)
  @happiness = happ_val
  if @happiness > 10
    @happiness = 10
  elsif @happiness < 0
    @happiness = 0
  end

end


def hygiene= (hyg_val)
    @hygiene = hyg_val
  if @hygiene > 10
    @hygiene = 10
  elsif @hygiene < 0
    @hygiene = 0
  end

end


def happy?
  happiness > 7
end


def clean?
  hygiene > 7
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

def call_friend(person)
  self.happiness += 3
  person.happiness += 3
  "Hi #{person.name}! It's #{self.name}. How are you?"
end


def start_conversation(person, topic)
  if topic == "politics"
    self.happiness -= 2
    person.happiness -= 2
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness += 1
    person.happiness += 1
    return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
  end
end

end
