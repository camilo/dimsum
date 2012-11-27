require "dimsum/version"

module Dimsum
  def reservoir_file(filename, sample_size)
    random = Random.new
    out = []

    File.open(filename, "r").each_line.each_with_index do |line, line_number|
      keep, index = keep_line_in_index(line_number, sample_size, random)
      out[index] = line if keep
    end
    out
  end

  def reservoir_stdin(sample_size)
    random = Random.new
    input_line_number = 0
    out = []

    STDIN.each_line do |line|
      keep, index = keep_line_in_index(input_line_number, sample_size,  random)
      out[index] = line if keep
      input_line_number += 1
    end

    out
  end

  def keep_line_in_index(input_line_number, sample_size, random_number_generator)
    if input_line_number < sample_size
      [true, input_line_number]
    else
      r = random_number_generator.rand(0 .. input_line_number)
      keep = r < sample_size 
      [keep, r]
    end
  end
end
