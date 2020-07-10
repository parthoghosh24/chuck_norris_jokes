require "faraday"

module ChuckNorrisJokes
    class Api < Faraday::Connection

        def initialize(url="https://api.chucknorris.io")
            super(url)
        end

        def get_random
            self.get "/jokes/random"
        end

        def get_categories
            self.get "/jokes/categories"
        end

        def get_random_in_category(category)
            self.get "/jokes/random?category=#{category}"
        end

        def search(query)
            self.get "/jokes/search?query=#{query}"
        end
    end
end