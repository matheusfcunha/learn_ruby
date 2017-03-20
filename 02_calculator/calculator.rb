#write your code here

def add int1, int2
  add = int1 + int2
end

def subtract int1, int2
  subtract = int1 - int2
end

def sum args
  args.inject(:+)
end

def multiply *args
  args.inject(:*)
end

def power int, exponent
int ** exponent
end

def factorial int
 (1..int).inject(:*) || 1
end
