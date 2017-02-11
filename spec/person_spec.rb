describe Person do

  describe '#initialize' do
    it "initilizes with first name" do
      expect( Person.new("John").first_name ).to eq "John"
    end

    it "initializes with last name" do
      expect( Person.new("Doe").last_name ).to eq "Doe"
    end
  end
end