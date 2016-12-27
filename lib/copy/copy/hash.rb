class Copy
  class Hash
    def self.call(hash, object)
      SetAttributes.(object, hash)
    end
  end
end
