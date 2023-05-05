require_relative 'buffer/buffer_src'
require 'pry'

class CircularBuffer
  attr_accessor :head, :size

  def initialize(size)
    @size = size
    create_nodes  
    @current_node = @head
    @oldest_node = @head
  end

  def create_nodes
    @head = Buffer::Node.new
    current_node = @head
    (size - 1).times do
      current_node.next_node = Buffer::Node.new
      current_node = current_node.next_node
    end
    current_node.next_node = @head
  end

  def print
    current_node = @head
    size.times do
      puts current_node.value.nil? ? "nil" : current_node.value
      current_node = current_node.next_node
    end
    puts "="*50
  end

  def append(value)
    @current_node.value = value
    @current_node = @current_node.next_node
    @oldest_node = @current_node
  end

  def pop
    @oldest_node.value = nil
    @oldest_node = @oldest_node.next_node
  end
end