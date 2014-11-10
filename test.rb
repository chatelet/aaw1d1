#!/usr/bin/env ruby

filename = ""
ARGV.each do|a|
  filename = a
end

arr = []
File.open(filename).each_line{ |s|
  arr << s.chars
}

START = [6, 1]
EXIT = [1, 14]

def maze_loop
  min_cost = 10000
  curr_cost = 0
  walkable = [] # all nodes in arr not an obstacle
  visited = [] # all nodes visited before
  node = START
  path = []

  # for one loop
  until node == EXIT || visited.length = walkable.length
    next_node = get_neighbor_nodes(node).shift
    visited << node
    path << node
    curr_cost += 1
    if curr_cost >= min_cost
      break
    end
    
  end

end

# returns the valid neighbors you can step to
# valid = walkable, not in visited, +1 in x or y
def get_neighbor_nodes(node)

end
