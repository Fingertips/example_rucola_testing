class Collector
  attr_accessor :_messages
  
  def initialize(*methods)
    (class << self; self; end).class_eval do
      methods.each do |m|
        define_method m do |*args|
          self._messages << [m, args]
        end
      end
    end
    self._messages = []
  end
  
  def received?(m)
    self._messages.any? { |method, _| method == m }
  end
end