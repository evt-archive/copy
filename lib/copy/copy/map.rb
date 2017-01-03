class Copy
  class Map
    def mappings
      @mappings ||= []
    end

    def add(object:, hash:)
      mappings << Copy::Mapping.build(object: object, hash: hash)
    end
  end
end
