#  This is just to start you off, it's entirely up to you how to organize your code.
# require the appropriate files from the model and view folders.
require 'json'

require_relative '../models/question.rb'
require_relative '../views/game_viewable.rb'

class GameController
  include GameViewable

  def initialize
    file = File.read('questions.json')
    questions_hashes = JSON.parse(file)
    @questions = []
    questions_hashes.each do |questions_hash|
      @questions << Question.new(questions_hash)
    end
  end

  def run
    greeting
    playing = true

    while playing
      puts @questions[0].question

      user_input = gets.chomp
      if user_input == 'quit'
        playing = false
      end
    end

    leaving_message
  end

  # write other methods in the controller to define (non-rails) controller actions
  # call these methods within your controller 'run' method.
end