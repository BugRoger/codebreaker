module CodeBreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start
      @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Enter guess:'
    end
  end
end
