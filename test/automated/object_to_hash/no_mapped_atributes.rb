require_relative '../automated_init'

context "Object to Hash" do
  context "No mapped attributes" do
    hash = {}
    object = Controls::Object.example

    Copy.(object, hash)

    context "Attributes are copied" do
      test "some_attribute" do
        assert(hash[:some_attribute] == 'some value')
      end

      test "some_other_attribute" do
        assert(hash[:some_other_attribute] == 'some other value')
      end

      test "another_attribte" do
        assert(hash[:another_attribte] == 'another value')
      end
    end
  end
end
