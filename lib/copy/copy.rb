class Copy
  initializer :from, :to

  def self.call(from, to)
    instance = new(from, to)
    instance.()
  end

  def call
    if from.is_a? ::Hash
      Hash.(from, to)
    else
      Object.(from, to)
    end
  end
end
