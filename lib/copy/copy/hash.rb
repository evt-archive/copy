class Copy
  module Hash
    def self.call(hash, object, mappings)
      map = map(hash, object, mappings)
      SetAttributes.(object, hash, copy: map)
    end

    def self.map(hash, object, mappings)
      keys = hash.keys
      map = []
      keys.each do |key|
        mapping = mappings.find { |m| m.key == key}

        if mapping.nil?
          map << key
        else
          map << { mapping.key => mapping.attribute }
        end
      end

      map
    end
  end
end
