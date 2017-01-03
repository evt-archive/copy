class Copy
  class Map
    def mappings
      @mappings ||= []
    end

    def add(attribute:, key:)
      mappings << Copy::Mapping.build(attribute: attribute, key: key)
    end

    def get_key(attribute)
      mapping = mappings.find { |m| m.attribute == attribute }
      mapping &.key
    end

    def get_attribute(key)
      mapping = mappings.find { |m| m.key == key }
      mapping &.attribute
    end
  end
end
