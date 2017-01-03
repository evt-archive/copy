require_relative '../automated_init'

context "Hash to Object" do
  context "Mapped Attributes" do
    hash = Controls::Hash.example
    object = Controls::Object::New.example

    hash.delete :some_attribute
    mapped_key_1 = SecureRandom.hex
    mapped_value_1 = SecureRandom.hex
    hash[mapped_key_1] = mapped_value_1

    hash.delete :some_other_attribute
    mapped_key_2 = SecureRandom.hex
    mapped_value_2 = SecureRandom.hex
    hash[mapped_key_2] = mapped_value_2

    mappings = []
    mappings << Copy::Mapping.build(attribute: :some_attribute, key: mapped_key_1)
    mappings << Copy::Mapping.build(attribute: :some_other_attribute, key: mapped_key_2)

    Copy.(hash, object, mappings)

    pp mappings

    pp hash
    pp object

    context "Attributes are copied" do
      test "some_attribute" do
        assert(object.some_attribute == mapped_value_1)
      end

      test "some_other_attribute" do
        assert(object.some_other_attribute == mapped_value_2)
      end

      test "another_attribte" do
        assert(object.another_attribte == 'another value')
      end
    end
  end
end
