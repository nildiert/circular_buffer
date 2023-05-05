require_relative 'circular_buffer'

buffer = CircularBuffer.new(5)

buffer.print
buffer.append(4)
buffer.append(5)
buffer.print
buffer.pop
buffer.append('a')
buffer.print
buffer.pop
buffer.print
buffer.append('b')
buffer.append('c')
buffer.append('d')
buffer.append('e')
buffer.print
buffer.append('f')
buffer.print
buffer.pop
buffer.print

buffer.append('a')
buffer.print
buffer.append('b')
buffer.append('c')
buffer.append('d')
buffer.print
buffer.append('z')
buffer.print
buffer.pop
buffer.print
buffer.pop
buffer.print
buffer.pop
buffer.pop
buffer.print
buffer.append('d')
buffer.print