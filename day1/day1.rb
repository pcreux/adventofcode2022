#!/usr/bin/env ruby

input = File.read('input.txt')

lines = input.split("\n")
slices = lines.slice_when { |element, next_element| next_element == "" }
totals = slices.map { |numbers| numbers.map(&:to_i).sum }
max = totals.max

pp max
