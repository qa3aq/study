module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each
        for element in self
          yield element
        end
      end

      # Написать свою функцию my_map
      def my_map
        my_arr = MyArray.new
        my_each { |el| my_arr << yield(el) }
      end

      # Написать свою функцию my_compact
      def my_compact; end

      # Написать свою функцию my_reduce
      def my_reduce; end
    end
  end
end
