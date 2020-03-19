require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true 
    end
    false 
  end

  def question?
    if self.end_with?("?")
      return true 
    end
    false
  end

  def exclamation?
    if self.end_with?("!")
      return true 
    end
    false
  end

  def count_sentences
    total_sentences = 0
    
    self.each_char.with_index do |char, index| 
      if index == 0 
        next
      end
      if char == "." && self[index-1] !="."
        total_sentences +=1
      elsif char == "?" && self[index-1] !="?"
        total_sentences +=1
      elsif char == "!" && self[index-1] !="!"
        total_sentences +=1
    end
    
  end
  total_sentences
end
end