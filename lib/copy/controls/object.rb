class Copy
  module Controls
    module Object
      def self.example
        example = Example.new

        example.some_attribute = 'some value'
        example.some_other_attribute = 'some other value'
        example.another_attribte = 'another value'

        example
      end

      module New
        def self.example
          Object::Example.new
        end
      end

      Example = Struct.new(
        :some_attribute,
        :some_other_attribute,
        :another_attribte
      )
    end
  end
end
