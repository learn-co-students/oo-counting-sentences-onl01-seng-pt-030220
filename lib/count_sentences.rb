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
    new_array = self.split(/[.?!]/)
    new_array.delete_if{|sentence| sentence.empty?}
    new_array.count
  end
end