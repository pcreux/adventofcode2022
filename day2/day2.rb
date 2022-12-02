#!/usr/bin/env ruby

input = File.read('input.txt')

lines = input.split("\n")
slices = lines.slice_when { |element, next_element| next_element == "" }
totals = slices.map { |numbers| numbers.map(&:to_i).sum }

# day 1
max = totals.max

# day 2
top_3 = totals.sort.reverse.first(3)

pp top_3.sum
