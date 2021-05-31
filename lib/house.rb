class House
    def initialize(start_words = "This is")
        @start_words = start_words
        @end_words = "the house that Jack built."
    end

    SUBJECTS =
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

    VERBS =
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

    def line_segments
        (0..10).map { |i| "#{SUBJECTS[i]}#{VERBS[i]}"}.append(@end_words)
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

class ShuffleHouse < House
    def line_segments
        v = VERBS.shuffle
        s = SUBJECTS.shuffle
        (0..10).map { |i| "#{s[i]}#{v[i]}"}.append(@end_words)
    end
end
