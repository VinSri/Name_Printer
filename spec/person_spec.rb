describe Person do

  describe '#initialize' do
    it "initilizes with first name" do
      expect( Person.new("John", "Doe").first_name ).to eq "John"
    end

    it "initializes with last name" do
      expect( Person.new("John","Doe").last_name ).to eq "Doe"
    end
  end

  describe '#print_name' do
    it "prints the full name" do
      expect( Person.new("John","Smith").print_name ).to eq "John Smith"
    end
  end
end