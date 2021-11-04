class Person
    attr_accessor :bank_account, :hygiene
    attr_reader :name, :happiness
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(level)
        @happiness = level
        @happiness = 10 unless happiness < 10
        @happiness = 0 unless happiness > 0
    end
    def hygiene=(level)
        @hygiene = level
        @hygiene = 10 unless hygiene < 10
        @hygiene = 0 unless hygiene > 0
    end
    def happy?
        @happiness > 7 ? true : false
    end
    def clean?
        @hygiene > 7 ? true : false
    end
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    def take_bath
        self.hygiene=(hygiene + 4)
       "♪ Rub-a-dub just relaxing in the tub ♫" 
    end
    def work_out
        self.hygiene = (hygiene - 3)
        self.happiness = (happiness + 2)
        "♪ another one bites the dust ♫"
    end
    def call_friend(instance)
        self.happiness = (happiness + 3)
        instance.happiness = (instance.happiness + 3)
        "Hi #{instance.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        case topic
        when "politics"
            self.happiness = (happiness - 2)
            person.happiness = (person.happiness - 2)
            return "blah blah partisan blah lobbyist"
        when 'weather'
            self.happiness = (happiness + 1)
            person.happiness = (person.happiness + 1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end