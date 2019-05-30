class Gladiator
    attr_accessor :name, :weapon
        def initialize(name, weapon)
            @name = name.capitalize
            @weapon = weapon
        end
end

class Arena 
    attr_accessor :name, :gladiators, :weapon
    def initialize(name)
        @name = name.capitalize
        @gladiators = []
    end

    def add_gladiator(addName)
        if @gladiators.length < 2 
        @gladiators.push(addName)
        end
    end

    def fight
        if @gladiators.length == 2
        if @gladiators[0].weapon == 'Trident' && @gladiators[1].weapon == 'Spear' || 
            @gladiators[0].weapon == 'Spear' && @gladiators[1].weapon == 'Club' ||
            @gladiators[0].weapon == 'Club' && @gladiators[1].weapon == 'Trident'

            @gladiators.pop
            puts "The winner is #{@gladiators[0].name}!" 
            
        elsif @gladiators[0].weapon == @gladiators[1].weapon
            @gladiators.clear 
            puts "It's a draw!"
            
        else 
            @gladiators.shift
            puts "The winner is #{@gladiators[0].name}!" 
        end
    end

    end 
end


# max = Gladiator.new(name: "Maximus", weapon:"Trident")

# puts max.name  
# puts max.weapon

#colosseum = Arena.new(name: "Colosseum")
#puts colosseum.name

# megalopolis = Arena.new(name: "megalopolis")
# puts(megalopolis.name.capitalize)

# colosseum = Arena.new(gladiators: "Colosseum")
# puts colosseum.gladiators

# max = Gladiator.new("maximus","Trident")
# colosseum = Arena.new("Colosseum")
# colosseum.add_gladiator(max)
# puts(colosseum.gladiators[0].name)

# max = Gladiator.new("Maximus","Trident")
# titus = Gladiator.new("Titus","Club")
# andronicus = Gladiator.new("Andronicus","Spear")
# colosseum = Arena.new("Colosseum")
# colosseum.add_gladiator(max)
# colosseum.add_gladiator(titus)
# colosseum.add_gladiator(andronicus)
# puts(colosseum.gladiators.length)

max = Gladiator.new("Maximus","Trident")
titus = Gladiator.new("Titus","Spear")
colosseum = Arena.new("Colosseum")
colosseum.add_gladiator(max)
colosseum.add_gladiator(titus)
colosseum.fight()
puts(colosseum.gladiators)