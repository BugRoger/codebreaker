require 'spec_helper'

module CodeBreaker
  describe Game do

    let(:output) { double('output').as_null_object }
    let(:game)   { Game.new(output) }

    describe "#start" do
      it "sends a welcome message" do
        output.should_receive(:puts).with("Welcome to Codebreaker!")
        game.start('1234')
      end

      it "prompts for the first guess" do
        output.should_receive(:puts).with("Enter guess:")
        game.start('1234')
      end
    end

    describe "#guess" do
      before(:each) do
        game.start('1234')
      end

      it "sends the mark to output" do
        output.should_receive(:puts).with('++++')
        game.guess('1234')
      end

      context "invalid guess" do
        before(:each) do
          output.should_receive(:puts).with("Your guess is invalid. It must be exactly 4 numbers.")
        end

        it "sends an error when the guess is too short" do
          game.guess('123')
        end

        it "sends and error when the guess is too long" do
          game.guess('12345')
        end

        it "sends an error when the guess is empty" do
          game.guess('')
        end
      end

      it "sends congratulations when the guess is correct" do
        output.should_receive(:puts).with('Congratulations. Your guess is correct. The secret was 1234.')
        game.guess('1234')
      end
    end

  end
end
