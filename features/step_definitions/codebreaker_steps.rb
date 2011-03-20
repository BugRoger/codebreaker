Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  game = CodeBreaker::Game.new(output)
  game.start('1234')
end

Then /^I should see "([^"]*)"$/ do |message|
  output.messages.should include(message)
end

Given /^the secret code is "([^"]*)"$/ do |secret|
  @game = CodeBreaker::Game.new(output)
  @game.start(secret)
end

When /^I guess "([^"]*)"$/ do |guess|
  @game.guess(guess) 
end

Then /^the mark should be "([^"]*)"$/ do |mark|
  output.messages.should include(mark)
end

Then /^I should not see a mark$/ do
  output.messages.should_not be_any { |m| m =~ /^[+-]{1,4}$/ }
end


class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

RSpec::Matchers.define :include_substring do |expected|
  match do |actual|
    actual.include?(expected)
  end
end

