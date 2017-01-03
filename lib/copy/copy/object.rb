class Copy
  class Object
    def self.call(object, hash, mappings)
      object_hash = object.to_h

      object_hash.each do |key, value|
        mapping = mappings.find { |m| m.attribute == key}

        if mapping.nil?
          hash[key] = value
        else
          hash[mapping.key] = value
        end
      end
    end
  end
end
