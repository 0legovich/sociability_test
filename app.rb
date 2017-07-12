require_relative './lib/test'
require_relative './lib/input_data_reader'
require_relative './lib/result_printer'
require_relative './lib/test_data'

test = Test.new

until test.finished?
  system "clear"
  p test.next_question
  test.show_points_for_answers
  test.input_answer
  test.calculate
end

test.final_result
