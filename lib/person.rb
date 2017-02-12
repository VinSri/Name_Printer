class Person

  attr_accessor :first_name, :last_name

  def initialize first_name = nil, last_name = nil
    @first_name = first_name
    @last_name = last_name
  end

  def print_name
    full_name.strip
  end

  private

  def format_name name
    name.gsub(/\s+/, '').capitalize unless name.nil?
  end

  def full_name
    "#{format_name @first_name} #{format_name @last_name}"
  end
end

