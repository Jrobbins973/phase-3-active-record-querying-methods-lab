class Show < ActiveRecord::Base

    def self.highest_rating
        maximum('rating')
    end

    def self.most_popular_show
        all.max_by{|show| show.rating}
    end

    def self.lowest_rating
        minimum('rating')
    end

    def self.least_popular_show
        all.min_by{|show| show.rating}
    end

    def self.ratings_sum
        sum('rating')
    end

    def self.popular_shows
        where('rating > 5')
    end



end