class Customer
  attr_reader :name, :surname, :title

  def initialize(name:, surname:, title:)
    @name    = name
    @surname = surname
    @title   = title
  end

  def full_name
    "#{surname}, #{name}"
  end

  def full_qualified_name
    "#{title} #{name} #{surname}"
  end
end
