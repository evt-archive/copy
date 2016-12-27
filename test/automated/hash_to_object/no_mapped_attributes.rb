require_relative '../automated_init'

context "Hash to Object" do
  context "No mapped attributes" do
    hash = {
      some_attribute: 'some value',
      some_other_attribute: 'some other value',
      another_attribte: 'another value'
    }

    SomeObject = Struct.new(
      :some_attribute,
      :some_other_attribute,
      :another_attribte
    )

    some_object = SomeObject.new

    Copy.(hash, some_object)

    context "Attributes are copied" do
      test "some_attribute" do
        assert(some_object.some_attribute == 'some value')
      end

      test "some_other_attribute" do
        assert(some_object.some_attribute == 'some other value')
      end

      test "another_attribte" do
        assert(some_object.another_attribte == 'another value')
      end
    end
  end
end
