#  This is just to start you off, it's entirely up to you how to organize your code.

class Question
  attr_reader :question
  def initialize(options)
    @question = options["question"]
    @possible_answers = options["possible_answers"]
    @correct = options["correct"]
  end
end