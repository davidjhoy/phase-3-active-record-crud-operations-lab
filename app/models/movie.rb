class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        Movie.create(title: title)
        
    end

    def self.first_movie
        Movie.all.first
    end

    def self.last_movie
        Movie.all.last
    end

    def self.movie_count
        Movie.all.count
    end

    def self.find_movie_with_id(id)
        Movie.find_by(id: id)
    end

    def self.find_movie_with_attributes(arg)
        title, release_date, director, lead, in_theaters = arg.values_at(:title, :release_date, :director, :lead, :in_theaters)
        Movie.find_by(title: title, release_date: release_date, director: director, lead: lead, in_theaters: in_theaters)
    end

    def self.find_movies_after_2002
        Movie.all.where("release_date > '2002'")
    end

    def update_with_attributes(arg)
        title, release_date, director, lead, in_theaters = arg.values_at(:title, :release_date, :director, :lead, :in_theaters)
        self.update(title: title, release_date: release_date, director: director, lead: lead, in_theaters: in_theaters)
    end

    def self.update_all_titles(title)
        Movie.all.update(title: title)
    end

    def self.delete_by_id(id)
        Movie.destroy_by(id: id)
    end

    def self.delete_all_movies
        Movie.destroy_all
    end

    

end