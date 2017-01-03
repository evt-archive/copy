require_relative 'automated_init'

map = Copy::Map.new

mapped_key_1 = SecureRandom.hex
mapped_key_2 = SecureRandom.hex

map.add(object: :some_attribute, hash: mapped_key_1)
map.add(object: :some_other_attribute, hash: mapped_key_2)

pp map

hash_key = map.mappings.find {|map| map.object == :some_attribute }.hash

hash_key = map.get_key(:some_attribute)

pp hash_key
