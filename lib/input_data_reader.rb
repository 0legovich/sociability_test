class InputDataReader
  attr_accessor :point_for_answer

  def input_answer(points_for_answers)
    now_input = ""
    until points_for_answers.key?(now_input)
      puts "Введите ответ #{points_for_answers.keys.join(', ')}"
      now_input = STDIN.gets.chomp.to_sym.downcase
    end
    @point_for_answer = points_for_answers[now_input]
  end
end
