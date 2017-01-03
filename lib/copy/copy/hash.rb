class Copy
  module Hash
    def self.call(hash, object, map)
      map = map(hash, object, map)
      SetAttributes.(object, hash, copy: map)
    end

    def self.map(hash, object, map)
      keys = hash.keys
      map = []
      keys.each do |key|
        mapping = map.find { |m| m.key == key}

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
