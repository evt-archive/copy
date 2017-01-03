require_relative '../automated_init'

context "Object to Hash" do
  context "Mapped Attributes" do
    hash = {}
    object = Controls::Object.example

    mapped_key_1 = SecureRandom.hex
    mapped_value_1 = SecureRandom.hex

    mapped_key_2 = SecureRandom.hex
    mapped_value_2 = SecureRandom.hex

    object.some_attribute = mapped_value_1
    object.some_other_attribute = mapped_value_2

    map = Copy::Map.new
    map.add(attribute: :some_attribute, key: mapped_key_1)
    map.add(attribute: :some_other_attribute, key: mapped_key_2)

    Copy.(object, hash, map)

    context "Attributes are Copied" do
      test "some_attribute" do
        assert(hash[mapped_key_1] == mapped_value_1)
      end

      test "some_other_attribute" do
        assert(hash[mapped_key_2] == mapped_value_2)
      end

      test "another_attribte" do
        assert(hash[:another_attribte] == 'another value')
      end
    end
  end
end
