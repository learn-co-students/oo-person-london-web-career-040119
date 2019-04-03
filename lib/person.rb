# your code goes here
class Person

  attr_reader :name
  attr_accessor :bank_account, :hygiene, :happiness

  def initialize(name, bank_account=(25), happiness=(8), hygiene=(8))
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene= hygiene
  end


  def hygiene=(hygiene)

    @hygiene = 0 if hygiene < 0
    @hygiene = 10 if hygiene > 10
    @hygiene = hygiene if hygiene.between?(0,10)

    # if hygiene < 0
      # @hygiene = 0
    # elsif hygiene > 10
      # @hygiene = 10
    # else
      # @hygiene = hygiene
    # end
  end

  def happiness=(happiness)

    @happiness = 0 if happiness < 0
    @happiness = 10 if happiness > 10
    @happiness = happiness if happiness.between?(0,10)

    # if happiness < 0
      # @happiness = 0
    # elsif happiness > 10
      # @happiness = 10
    # else
      # @happiness = happiness
    # end
  end

  def take_bath
    self.hygiene += 4
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def clean?
    return true if @hygiene > 7
    return false
  end

  def happy?
    return true if @happiness > 7
    return false
  end

  def call_friend(friend=Person.new)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person,topic)
    case topic
      when "politics"
        self.happiness -= 2
        person.happiness -= 2
        return 'blah blah partisan blah lobbyist'
      when "weather"
        self.happiness += 1
        person.happiness += 1
        return 'blah blah sun blah rain'
      else
        return 'blah blah blah blah blah'
      end
  end


  def get_paid(amount)
    @bank_account = @bank_account+amount
    return "all about the benjamins"
  end

end
