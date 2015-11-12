# I worked with Yi Lu

def total(n)

  sum = n.inject(:+)
  return sum

end

def sentence_maker(array)
  ret = array.join(' ').capitalize << '.'
  return ret
end
