require_relative '../automated_init'

context "Map" do
  map = Copy::Map.new

  mapped_key_1 = SecureRandom.hex

  map.add(attribute: :some_attribute, key: :some_key)
  map.add(attribute: :some_other_attribute, key: :some_other_key)

  attribute = map.get_attribute(:some_key)

  context "Get Attribute for Key" do
    test "Attribute corresponding to key is returned" do
      assert(attribute == :some_attribute)
    end
  end
end
