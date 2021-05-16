class House

    attr_reader :segments

    def initialize(start_words = "This is")
        @segments = []
        push_lines_to_segments
        @start_words = start_words
    end

    def push_lines_to_segments
        @segments[0]  = "the horse and the hound and the horn that belonged to"
        @segments[1]  = "the farmer sowing his corn that kept"
        @segments[2]  = "the rooster that crowed in the morn that woke"
        @segments[3]  = "the priest all shaven and shorn that married" 
        @segments[4]  = "the man all tattered and torn that kissed"
        @segments[5]  = "the maiden all forlorn that milked"
        @segments[6]  = "the cow with the crumpled horn that tossed"
        @segments[7]  = "the dog that worried"
        @segments[8]  = "the cat that killed"
        @segments[9]  = "the rat that ate"
        @segments[10] = "the malt that lay in"
        @segments[11] = "the house that Jack built"
    end

    

    def line(number)
            "#{@start_words} %s.\n" % @segments.last(number).join(' ')
    end

    def recite
        (1..@segments.length).map {|i| line(i)}.join("\n")
#         <<-TEXT
# This is the house that Jack built.

# This is the malt that lay in the house that Jack built.

# This is the rat that ate the malt that lay in the house that Jack built.

# This is the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

# This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
#     TEXT
    end
end


# h = House.new()
# puts h.segments