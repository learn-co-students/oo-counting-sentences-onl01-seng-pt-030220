require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end 
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end 
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end 
  end

  def count_sentences
    sentence_array = self.split(/\?|\.|!/)
    sentence_array.delete_if{|sentence| sentence.empty?}
    sentence_array.length
  end
end
#/ then question mark \? then "or" | then period(full-stop) \. then "or" | then exclamation point ! then / to end the expression.
#becomes /\?|\.|!/ or (/\?|\.|!/)