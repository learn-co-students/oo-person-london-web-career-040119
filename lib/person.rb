class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name
  #attr_write

  def initialize(name)
    @name=name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    if happiness >= 10
      @happiness = 10
    elsif happiness <= 0
      @happiness = 0
    else
      @happiness = happiness
    end
  end

  def hygiene=(hygiene)
    if hygiene >= 10
      @hygiene = 10
    elsif hygiene <= 0
      @hygiene = 0
    else
       @hygiene = hygiene
    end
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
     return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    return  "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when 'politics'
      friend.happiness -= 2
      self.happiness -= 2
      return "blah blah partisan blah lobbyist"
    when 'weather'
      friend.happiness += 1
      self.happiness += 1
      return "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
# Each instance of class Personshould be able to remember their name
# Each instance of class Person should start with $25 in their bank accounts
# Each instance of class Person should start with eight happiness points
# Each instance of class Person should start with eight hygiene points
