fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish',
  'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(fishies)

  fishies.each do |fishy1|
    longest? = true
    fishies.each do |fishy2|
      longest? = false if fishy2.length > fishy1.length
    end
    return fishy1 if longest? == true

end

def dominant_octopus(nommies)
  return nommies if nommies.length < 2

  middle = nommies.length / 2
  left = dominant_octopus(nommies[0...middle])
  right = dominant_octopus(nommies[middle..-1])

  smush(left, right)
end


def smush(left, right)
  omnom =[]

  until left.length == 0 || right.length == 0
    if left[0].length < right[0].length
      omnom << left.shift
    else
      omnom << right.shift
    end
  end

  omnom.concat(left)
  omnom.concat(right)
end


def clever_octopus(foodses)
  biggest = ""
  foodses.each do |food|
    biggest = food if food.length > biggest.length
  end
  biggest
end


tiles_array = ["up", "right-up", "right", "right-down", "down",
  "left-down", "left",  "left-up" ]

def slow_dancing_octopus(direction, tiles_array)
  i = 0
  until tiles_array[i] == direction
    i += 1
  end

  i + 1
end

tiles_hash = {
  :up => 1,
  :rightup => 2,
  :right => 3,
  :rightdown => 4
  :etc => 5
}

def constant_dance!(direction, tiles_hash)
  tiles_hash[direction]
end
