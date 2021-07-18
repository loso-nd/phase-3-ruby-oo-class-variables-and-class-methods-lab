class Song

    attr_accessor :name, :artist, :genre

    @@count = 0 #increment count when new song is created
    @@genres = [] #add genres to arr when a new song is created
    @@artists = []

    def initialize(name, artist, genre)
    #instance variables that represent
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
    #shoveling All genres and artits into their respected  arrays
        @@genres << genre
        @@artists << artist
    end

    #Class methods which return class variables
    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

#We also need our `Song` class to be able to keep track of the number of songs of each genre it creates.
#returning a list of songs therefore, we need to iterate through each genre
    def self.genre_count
        genre_count = {}
      
        #grab all of the genres and iterate over it
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end
#we create a new hash called genre_count > we iterate over @@genre wih is an array > for each genre in that array if a genre already exist, count the number of geners in that array and add 1 > else make that current genre_count in that array the first one. 

def self.artists
    #returns a unique arr of artists of exisiting songs
    @@artists.uniq
end


#We also need our `Song` class to be able to keep track of the number of songs of each artist creates.
#returning a list of songs created by an artist therefore, we need to iterate through each artist
    def self.artist_count
        artist_count = {}

        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else 
                artist_count[artist] = 1
            end
        end

        artist_count
    end
end