require 'pry'
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if happiness > 10
         @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
          @happiness = happiness
        end  
    end

    # def happiness 
    #     @happiness
    # end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
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
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4 

        return "♪ Rub-a-dub just relaxing in the tub ♫" 

    end

    def work_out
        self.hygiene = @hygiene - 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness += 3

    end

    # def bank_account=(bank_account)
    #     @bank_account = bank_account
    # end   
    ## equivalent to   attr_writer :bank_account
    
    
    # def name
    #     @name
    # end
    ## equivalent to attr_reader :name

    
end