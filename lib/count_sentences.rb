require 'pry'

class String
  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    arr = self.split(" ")
    count = 0
    arr.each do |word|
      if word.end_with?("?") || word.end_with?(".") || word.end_with?("!")
        count += 1
      end
    end
    count
  end

end


puts "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
