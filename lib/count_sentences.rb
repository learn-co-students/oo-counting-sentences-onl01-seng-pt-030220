require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    new_self = self.split(/\S\?|\S\.|\S!/)
    self_counted = new_self.count 
    return self_counted
  end
  
end