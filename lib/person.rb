# your code goes here
require "pry"

class Person
 attr_reader :name, :hygiene, :happiness
 attr_accessor :bank_account
 def initialize(name, bank_account=25, happiness=8, hygiene=8)
   @name = name
   @bank_account = bank_account
   @happiness = happiness
   @hygiene = hygiene
 end

 def happiness=(index)
   if index > 10
    @happiness = 10
   elsif index < 0
     @happiness = 0
   else
     @happiness = index
   end
 end

 def hygiene=(index)
   if (index) > 10
    @hygiene = 10
  elsif index < 0
     @hygiene = 0
   else
     @hygiene = index
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
  self.hygiene = self.hygiene + 4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness = self.happiness + 2
  self.hygiene = self.hygiene - 3
  "♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(start_person, topic)
  if topic == "politics"
    start_person.happiness -=2
    self.happiness -=2
    "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    start_person.happiness +=1
    self.happiness +=1
    "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
  end

end

end

#johnny = Person.new("johnny")
#binding.pry
