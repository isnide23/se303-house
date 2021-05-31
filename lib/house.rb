class House
    def initialize(start_words = "This is")
        @start_words = start_words
        @end_words = "the house that Jack built."
    end

    def subjects
        [
        'the horse and the hound and the horn ',
        'the farmer sowing his corn ',
        'the rooster that crowed in the morn ',
        'the priest all shaven and shorn ',
        'the man all tattered and torn ',
        'the maiden all forlorn ',
        'the cow with the crumpled horn ',
        'the dog ',
        'the cat ',
        'the rat ',
        'the malt ',
        ]
    end

    def verbs
        [
        'that belonged to',
        'that kept',
        'that woke',
        'that married',
        'that kissed',
        'that milked',
        'that tossed',
        'that worried',
        'that killed',
        'that ate',
        'that lay in',
        ]
    end



    def line_segments
        (0..10).map { |i| "#{subjects[i]}#{verbs[i]}"}.append(@end_words)
        # [
        # 'the horse and the hound and the horn that belonged to',
        # 'the farmer sowing his corn that kept',
        # 'the rooster that crowed in the morn that woke',
        # 'the priest all shaven and shorn that married',
        # 'the man all tattered and torn that kissed',
        # 'the maiden all forlorn that milked',
        # 'the cow with the crumpled horn that tossed',
        # 'the dog that worried',
        # 'the cat that killed',
        # 'the rat that ate',
        # 'the malt that lay in',
        # 'the house that Jack built.',
        # ]
    end

    def phrase(number)
        line_segments.last(number).join(' ')
    end

    def line(number)
        "#{@start_words} #{phrase(number)}\n"
    end

    def recite
        (1..line_segments.length).map {|i| line(i)}.join("\n")
    end
end

class RandomHouse < House
    def line_segments
        data = super
        data.pop
        data.shuffle.append(@end_words)
    end

end

# f = House.new("Thar be") 
# puts f.recite

# g = RandomHouse.new("Thar be") 
# puts g.line(2)