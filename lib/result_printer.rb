class ResultPrinter

  def show_points_for_answers(keys_points_for_answers, answers)
    keys_points_for_answers.each_with_index{ |val, key| puts "#{val}) #{answers[key]}" }
  end

  def final_result(points, results)
    case points
    when 0..3
      puts results.last
    when 4..8
      puts results[5]
    when 9..13
      puts results[4]
    when 14..18
      puts results[3]
    when 19..24
      puts results[2]
    when 25..29
      puts results[1]
    when 30..31
      puts results.first
    when 32
      puts "Псссс, парень. Тест сам не в курсе, что можно набрать 32 балла!"
    end
  end
end
