class Test

  attr_accessor :points_for_answers, :answers, :points, :results, :printer, :inspector_data

  def initialize
    test_data = TestData.new
    @questions = test_data.questions
    @points_for_answers = test_data.points_for_answers
    @answers = test_data.answers
    @results = test_data.results
    @now_question = 0
    @points = 0
    @printer = ResultPrinter.new
    @inspector_data = InputDataReader.new
  end

  def finished?
    true if @now_question == @questions.size
  end

  def next_question
    question = @questions[@now_question].chomp
    @now_question += 1
    question
  end

  def calculate
    @points += inspector_data.point_for_answer
  end

  def show_points_for_answers
    @printer.show_points_for_answers(points_for_answers.keys, answers)
  end

  def input_answer
    @inspector_data.input_answer(points_for_answers)
  end

  def final_result
    @printer.final_result(points, results)
  end
end
