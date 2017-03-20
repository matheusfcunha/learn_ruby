class Timer
  attr_accessor :seconds

  def seconds
    @seconds = 0
  end

  def time_string
    @time_string = Time.new(0)
    @time_string += @seconds
    @time_string.strftime("%T")
  end

end
