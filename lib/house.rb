class House

    attr_reader :segments

    def initialize(start_words = "This is")
        @segments = []
        push_lines_to_segments
        @start_words = start_words
    end

    def push_lines_to_segments
        @segments[0] = "the house that Jack built."
        @segments[1] = "the malt that lay in"
        @segments[2] = "the rat that ate "
        @segments[3] = "the cat that killed" 
        @segments[4] = "the dog that worried"
        @segments[5] = "the cow with the crumpled horn that tossed"
        @segments[6] = "the maiden all forlorn that milked"
        @segments[7] = "the man all tattered and torn that kissed"
        @segments[8] = "the priest all shaven and shorn that married"
        @segments[9] = "the rooster that crowed in the morn that woke"
        @segments[10] = "the farmer sowing his corn that kept"
        @segments[11] = "the horse and the hound and the horn that belonged to"
        @segments.reverse
    end

    

    def line(number)
        case number
        when 1
            @start_words + " #{@segments[number - 1]}\n"
           #@start_words + "the house that Jack built."
        when 2
            @start_words + " #{@segments[number - 1]}" + " #{@segments[number - 2]}\n"
        when 3
            @start_words + " the rat that ate the malt that lay in the house that Jack built.\n"
        when 4
            @start_words + " the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 5
            @start_words + " the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 6
            @start_words + " the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 7
            @start_words + " the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 8
            @start_words + " the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 9
            @start_words + " the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 10
            @start_words + " the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 11
            @start_words + " the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 12
            @start_words + " the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        else
            "not a valid line number"
        end
    end

    def recite
        <<-TEXT
This is the house that Jack built.

This is the malt that lay in the house that Jack built.

This is the rat that ate the malt that lay in the house that Jack built.

This is the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT
    end
end


# h = House.new()
# puts h.segments