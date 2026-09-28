require_relative "question"

questions = [
  Question.new("Vad heter huvudstaden i Norge?", "Oslo"),
  Question.new("Vilket år släpptes Ruby 1.0?", "1996"),
  Question.new("Vad svarar 5.class?", "Integer"),
  Question.new("vad är den kortaste distansen från sal 306 till säve flygfält (fågelvägen)?", "10km"),
  Question.new("Borde MICA-EM elimineras?", "Ja"),
  Question.new("Vems fel är det?", "Israels fel"),
]

score = 0

questions.each do |q|
  reply = q.ask
  if q.correct?(reply)
    puts "Rätt!"
    score += 1
  else
    puts "Fel. Rätt svar: #{q.answer}"
  end
end

puts "#{score} av #{questions.length} rätt."
