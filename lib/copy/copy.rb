class Copy
  include Initializer

  def map
    @map ||= Map.new
  end
  attr_writer :map

  initializer :from, :to

  def self.call(from, to, map=nil)
    instance = new(from, to)
    instance.map = map
    instance.()
  end

  def call
    if from.is_a? ::Hash
      Hash.(from, to, map)
    else
      Object.(from, to, map)
    end
  end

  def add_map(attribute:, key:)
    map << Mapping.new(attribute, key)
  end

  Mapping = Struct.new(:attribute, :key) do
    def self.build(attribute:, key:)
      new(attribute, key)
    end
  end
end
