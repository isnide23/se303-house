class House

    attr_reader :segments

    def initialize(start_words = "This is")
        @start_words = start_words
        @end_words = "the house that Jack built"
    end

    def line_segments
        [
        'the horse and the hound and the horn that belonged to',
        'the farmer sowing his corn that kept',
        'the rooster that crowed in the morn that woke',
        'the priest all shaven and shorn that married',
        'the man all tattered and torn that kissed',
        'the maiden all forlorn that milked',
        'the cow with the crumpled horn that tossed',
        'the dog that worried',
        'the cat that killed',
        'the rat that ate',
        'the malt that lay in',
        'the house that Jack built',
        ]
    end

    def line(number)
            "#{@start_words} %s.\n" % line_segments.last(number).join(' ')
    end

    def recite
        (1..line_segments.length).map {|i| line(i)}.join("\n")
    end
end

# f = House.new("Thar be") 
# puts f.recite