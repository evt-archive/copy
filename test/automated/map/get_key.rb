require_relative '../automated_init'

context "Map" do
  map = Copy::Map.new

  mapped_key_1 = SecureRandom.hex

  map.add(attribute: :some_attribute, key: :some_key)
  map.add(attribute: :some_other_attribute, key: :some_other_key)

  key = map.get_key(:some_attribute)

  context "Get Key for Attribute" do
    test "Key corresponding to attribute is returned" do
      assert(key == :some_key)
    end
  end
end
