# your code goes here
# get paid/receive payments
# take a bath
# call a friend
# start a conversation
# state if they are happy and/or clean
require 'pry'

class Person

    attr_accessor :bank_account, :hygiene #reads and writes
    attr_reader :name, :happiness

  def initialize(name, happiness = 8, hygiene = 8)
        @name = name
        @bank_account  = 25
        @happiness = happiness
        @hygiene = hygiene
   end #end of initialize


  def happiness=(happiness)
    if happiness > 10
        @happiness = 10
    elsif happiness < 0
        @happiness = 0
    else
        @happiness = happiness
      end
  end

  def hygiene
    if @hygiene > 10
      return 10
    elsif @hygiene < 0
        return 0
    else
       return @hygiene
      end
  end

  def happy?
      if happiness > 7
        return true
      else
        return false
      end
    end

    def clean?
      if hygiene > 7
        return true
      else
        return false
      end
    end

    def get_paid(salary)
      @bank_account += salary
      return "all about the benjamins"
    end


    def take_bath
      self.hygiene += 4 #look up self
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.hygiene -= 3  #refer to lab "self"
      self.happiness += 2
      return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3 #refer to lab to understand "self"
        return "Hi #{friend.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(person, topic)
        if topic == "politics"
          person.happiness -= 2
          self.happiness -=2
          #person.happpiness -= 2
          return "blah blah partisan blah lobbyist"

        elsif topic == "weather"
          person.happiness += 1
          self.happiness += 1
            return "blah blah sun blah rain"
        else
          return "blah blah blah blah blah"
        end
    end

end #end of Person class
