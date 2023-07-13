local hamming = {}

function hamming.compute( string1, string2 )

  if string.len(string1) ~= string.len(string2) then
    return -1
  end

  wordsA = {}
  wordsB= {}

  for i in string.gmatch(string1, '.') do
    wordsA[#wordsA + 1] = i
  end

  for i in string.gmatch(string2, '.') do
    wordsB[#wordsB + 1] = i
  end

  distance = 0

  for i, a in ipairs(wordsA) do
    if a ~= wordsB[i] and wordsB[i] then
      distance = distance + 1
    end
  end

  return distance

end

  return hamming