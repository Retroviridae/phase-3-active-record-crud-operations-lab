class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        self.create(title: title)
    end

    def self.first_movie
        self.all.first
    end

    def self.last_movie
        self.all.last
    end

    def self.movie_count
        self.all.length
    end

    def self.find_movie_with_id(int)
        self.all.find {|movie| movie[:id] == int}
    end

    def self.find_movie_with_attributes(keyvalue)
        self.all.find_by(keyvalue)
    end

    def self.find_movies_after_2002
        self.all.filter { |movie| movie[:release_date]>2002}
    end

    def update_with_attributes(keyvalue)
        self.update(keyvalue)
    end

    def self.update_all_titles(newTitle)
        self.update(title:newTitle)
    end

    def self.delete_by_id(idInt)
        self.all.find {|movie| movie.id == idInt}.destroy
    end

    def self.delete_all_movies
        self.all.destroy_all
    end


end