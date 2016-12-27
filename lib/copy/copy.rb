class Copy
  def mappings
    @mappings ||= []
  end
  attr_writer :mappings

  initializer :from, :to

  def self.call(from, to, mappings=nil)
    instance = new(from, to)
    instance.mappings = mappings
    instance.()
  end

  def call
    if from.is_a? ::Hash
      Hash.(from, to, mappings)
    else
      Object.(from, to, mappings)
    end
  end

  def map(object:, hash:)
    mappings << Mapping.new(object, hash)
  end

  Mapping = Struct.new(:object, :hash) do
    def self.build(object:, hash:)
      new(object, hash)
    end
  end
end
