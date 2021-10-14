class Song 
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize (provided_name, provided_artist, provided_genre)

        # setting these attributes for each individual instance of this Song class
        self.name = provided_name
        self.artist = provided_artist
        self.genre = provided_genre

        # class variables and their updates
        @@count += 1
        @@artists.push(provided_artist)
        @@genres.push(provided_genre)
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count_hash = {}

        @@genres.each do |genre|
            # does the genre count hash already have a key with this genree (eg pop, folk, etc)? if so, add one to the count for that genre. if the hash doens't already have that genre, add it and set the counter to 1 since it's the first one
            if genre_count_hash.key?(genre)
                genre_count_hash[genre] += 1
            else
                genre_count_hash[genre] = 1
            end
        end
        genre_count_hash
    end

    def self.artist_count
        artist_count_hash = {}
        @@artists.each do |artist|
            if artist_count_hash.key?(artist)
                artist_count_hash[artist] += 1
            else    
                artist_count_hash[artist] = 1
            end
        end
        artist_count_hash
    end

    # could also just do this!
    # def self.artist_count
    # @@artists.tally
    # end

end

