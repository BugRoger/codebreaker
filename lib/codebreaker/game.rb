module CodeBreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret)
      @secret = secret

      @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Enter guess:'
    end

    def guess(guess)
      if valid?(guess)
        marker = Marker.new(@secret, guess)
        @output.puts '+' * marker.exact_match_count + '-' * marker.number_match_count
      end
    end

    private 

    def valid?(guess)
      if guess.length < 4  
        @output.puts "Your guess is too short. Try again!" 
        return false
      end

      if guess.length > 4 
        @output.puts "Your guess is too long. Try again!"
        return false
      end

      true
    end
  end
end
