emotions = { "anxiety" => 1, "existential dread" => 2, "loathing" => 3, "fear" => 3, "sheer unreasoning terror" => 3
}

class Person

  def initialize(name, emotions)
    @name = name
    @emotions = emotions
  end

  def emotion_level(emotion)
    if @emotions[emotion] == 3
      return "high"
    elsif @emotions[emotion] == 2
      return "medium"
    elsif @emotions[emotion] == 1
      return "low"
    else
       return "certain"
    end
  end

  def talk_about_it(emotion)
    return "I'm feeling a #{emotion_level(emotion)} amount of #{emotion} right now."
  end

  def talking
    @emotions.each do |emotion, level|
      puts talk_about_it(emotion)
    end
  end

end

person = Person.new("dave", emotions)
puts person.talking

# puts emotion_level
