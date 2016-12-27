class Copy
  initializer :from, :to

  def self.call(from, to)
    instance = new(from, to)
    instance.()
  end

  def call

  end
end
