class TestData
  attr_accessor :answers, :points_for_answers

  def initialize
    @questions = []
    @answers = ["Да", "Нет", "Иногда"]
    @points_for_answers = {a: 2, b: 0, c: 1}
    @current_path = File.dirname(__FILE__)
  end

  def questions
    questions_path = @current_path + '/../data/questions.txt'
    if File.exist?(questions_path)
      @questions = File.readlines(questions_path)
    else
      puts "Файла с вопросами нет."
    end
    @questions
  end

  def results
    results_path = @current_path + '/../data/results.txt'
    File.exist?(results_path) ? @results = File.readlines(results_path) : (puts "Файла с результатами нет.")
    @results
  end
end
