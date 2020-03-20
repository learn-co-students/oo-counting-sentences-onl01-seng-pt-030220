require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    simplified_sentence = self.split(/[.?!]/)
    simplified_sentence.reject { |e|  e.empty? }.count
  end
end