require_relative '../automated_init'

context "Hash to Object" do
  context "No mapped attributes" do
    hash = Controls::Hash.example
    object = Controls::Object::New.example

    Copy.(hash, object)

    context "Attributes are copied" do
      test "some_attribute" do
        assert(object.some_attribute == 'some value')
      end

      test "some_other_attribute" do
        assert(object.some_other_attribute == 'some other value')
      end

      test "another_attribte" do
        assert(object.another_attribte == 'another value')
      end
    end
  end
end
