class StaticPagesController < ApplicationController

    helper_method :yeller
    helper_method :random_subdomain
    helper_method :string_shuffle
    helper_method :palindrome?

    def home
    end

    def help
    end

    def about
    end

    def contact
    end

    # yeller method accepts array elements and returns upercase letters
    def yeller(array = [])
        if array.empty?
            puts 'Array is empty'
        else
            array.map(&:upcase).join
        end
    end

    # random_subdomain method returns a randomly generated strings of 8 charachters
    def random_subdomain
        ('a'..'z').to_a.shuffle[0..7].join
    end

    # string_shuffle method takes string and returns shuffled letters
    def string_shuffle(s)
      s.split('').shuffle.join
    end

    # palindrome? method takes string, checks if it is palindrome and returns boolean true or false
    def palindrome?(word)
      if word == word.reverse
        puts "The word #{word} is palindrome"
      elsif
        puts "The word #{word} is not palindrome"
      end
    end
end
