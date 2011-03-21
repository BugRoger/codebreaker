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
      unless valid?(guess)
        @output.puts "Your guess is invalid. It must be exactly 4 numbers." 
        return        
      end

      marker = Marker.new(@secret, guess)
      @output.puts '+' * marker.exact_match_count + '-' * marker.number_match_count

      if marker.exact_match_count == 4
        @output.puts "Congratulations. Your guess is correct. The secret was #{@secret}."
      end
    end

    private 

    def valid?(guess)
      guess =~ /^\d{4}$/
    end
  end
end
