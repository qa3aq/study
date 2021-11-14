module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each(&block)
        return if empty?

        first, *rest = self
        yield first
        MyArray.new(rest).my_each(&block)
        self
      end

      # Написать свою функцию my_map
      def my_map
        return if empty?

        my_reduce(MyArray.new) { |accumulator, element| accumulator << yield(element) }
      end

      # Написать свою функцию my_compact
      def my_compact
        return if empty?

        my_reduce(MyArray.new) { |accumulator, element| element.nil? ? accumulator : accumulator << element }
      end

      # Написать свою функцию my_reduce
      def my_reduce(accumulator = nil, &block)
        return accumulator if empty?

        first, *rest = self
        accumulator = accumulator.nil? ? first : yield(accumulator, first)
        MyArray.new(rest).my_reduce(accumulator, &block)
      end
    end
  end
end
