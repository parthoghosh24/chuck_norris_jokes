require "json"

module ChuckNorrisJokes
    class ChuckNorrisJokesError < StandardError; end

    class ChuckNorris
        attr_accessor :name, :api
        def initialize(name="Chuck Norris")
            @name = name
            @api = Api.new
        end

        def tell_me_a_joke_now
            begin
                resp =  api.get_random
                parsed = JSON.parse(resp.body.gsub! "Chuck Norris", name)
                parsed["value"]
            rescue ChuckNorrisJokes::ChuckNorrisJokesError=> exception
                puts "Chuck Norris ain't happy because #{exception}"
            end
        end

        def show_me_joke_categories
            begin
                resp =  api.get_categories
                parsed = JSON.parse resp.body
            rescue ChuckNorrisJokes::ChuckNorrisJokesError=> exception
                puts "Chuck Norris ain't happy because #{exception}"
            end
        end

        def tell_me_a_joke_now_from_category(cat)
            begin
                resp =  api.get_random_in_category cat
                parsed = JSON.parse resp.body
                parsed["value"].gsub! "Chuck Norris", name
            rescue ChuckNorrisJokes::ChuckNorrisJokesError=> exception
                puts "Chuck Norris ain't happy because #{exception}"
            end
        end

        def give_me_lot_of_jokes_having(term)
            begin
                resp =  api.search term
                parsed = JSON.parse(resp.body.gsub! "Chuck Norris", name)
                parsed["result"].collect{|res| res["value"]}
            rescue ChuckNorrisJokes::ChuckNorrisJokesError=> exception
                puts "Chuck Norris ain't happy because #{exception}"
            end
        end
    end
end