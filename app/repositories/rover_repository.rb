require_relative "../models/rover.rb"

require 'pry-byebug'

class RoverRepository
  def initialize(data_file_path)
    @data_file_path = data_file_path
    @rovers = []
    @plateau_size_x = nil
    @plateau_size_y = nil
    read_input_data_from_file if File.exist?(@data_file_path)
  end

  def read_input_data_from_file
    binding.pry
    size_array = File.open(@data_file_path, 'rb').first.split
    @plateau_size_x = size_array.first
    @plateau_size_y = size_array.last

    File.open(@data_file_path, 'rb').each_line.to_a[1..-1].each do |line|
      p line
    end
  end
end

