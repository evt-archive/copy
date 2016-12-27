class Copy
  class Object
    # def self.call(object, hash, mappings)
    #   hash.merge!(object.to_h)
    # end

    # def self.call(hash, object, mappings)
    #   map = map(hash, object, mappings)
    #   SetAttributes.(object, hash, copy: map)
    # end

    def self.call(object, hash, mappings)
      object_hash = object.to_h

      object_hash.each do |key, value|
        mapping = mappings.find { |m| m.object == key}

        if mapping.nil?
          hash[key] = value
        else
          hash[mapping.hash] = value
        end
      end
    end

    # def self.map(hash, object, mappings)
    #   keys = object.to_h.keys
    #   map = []
    #   keys.each do |key|
    #     mapping = mappings.find { |m| m.hash == key}

    #     if mapping.nil?
    #       map << key
    #     else
    #       map << { mapping.hash => mapping.object }
    #     end
    #   end

    #   map
    # end
  end
end
