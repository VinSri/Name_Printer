describe Person do

  subject { described_class }
  describe '#initialize' do
    it "initilizes with first name" do
      expect( subject.new("John", "Doe").first_name ).to eq "John"
    end

    it "initializes with last name" do
      expect( subject.new("John","Doe").last_name ).to eq "Doe"
    end
  end

  describe '#print_name' do
    it "prints the full name" do
      expect( subject.new("John","Smith").print_name ).to eq "John Smith"
    end

    it "prints the full name" do
      p1 = Person.new
      p1.first_name = 'Jane'
      p1.last_name = 'Doe'
      expect( p1.print_name ).to eq "Jane Doe"
    end

    it "prints the full name with first name and last name capitalized" do
      p1 = Person.new
      p1.first_name = 'jane'
      p1.last_name = 'doe'
      expect( p1.print_name ).to eq "Jane Doe"
    end
  end
end