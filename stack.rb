class Stack
  attr_accessor :stack
    def initialize
      @stack = []
    end

    def push(el)
      @stack.push(el)
    end

    def pop
      @stack.pop
    end

    def peek
      @stack[-1]
    end
  end


  class Queue
    attr_accessor :queue
      def initialize
        @queue = []
      end

      def enqu(el)
        @queue.push(el)
      end

      def dequ
        @queue.shift
      end

      def peek
        @stack[0]
      end
    end

    class Map
      attr_accessor :map
        def initialize
          @map = []
        end

        def set(key, value)
           @map.each_with_index{|set, idx| @map.delete_at(idx) if set[0] == key}
           #can't get the above to delete 
          set = [key, value]
          @map.push(set)
        end

        def get(key)
          @map.each do |item|
            return item[1] if item[0] == key
          end
        end

        def delete(key)
          @map.each_with_index do |item, idx|
            @map.delete_at(idx) if item[0] == key
          end

        end

        def show
          @map
        end
      end
