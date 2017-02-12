class Person

  attr_accessor :first_name, :last_name

  def initialize first_name = nil, last_name = nil
    @first_name = first_name
    @last_name = last_name
  end

  def print_name
    name_cleanser(first_name) + " " + name_cleanser(last_name)
  end

  private

  def name_cleanser name
    name.strip.capitalize
  end
end

