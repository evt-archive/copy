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

  def map(attribute:, key:)
    mappings << Mapping.new(attribute, key)
  end

  Mapping = Struct.new(:attribute, :key) do
    def self.build(attribute:, key:)
      new(attribute, key)
    end
  end
end
