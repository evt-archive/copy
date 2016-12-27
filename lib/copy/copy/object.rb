class Copy
  class Object
    def self.call(object, hash)
      hash.merge!(object.to_h)
    end
  end
end
