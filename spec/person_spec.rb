describe Person do

  describe '#initialize' do
    context 'when initialized with first_name and last_name' do
      subject { described_class.new("John","Doe")}
      specify { expect(subject.first_name).to eq "John" }
      specify { expect(subject.last_name).to eq "Doe" }
    end

    context 'when initialized with only first name' do
      subject { described_class.new("John")}
      specify { expect(subject.first_name).to eq "John" }
    end

    context 'when initialized with only last name' do
      subject { described_class.new( nil,"Doe")}
      specify { expect(subject.last_name).to eq "Doe" }
    end

    context 'when initialized without first_name and last name' do
      subject { described_class.new}
      specify { expect(subject.first_name).to eq nil }
      specify { expect(subject.last_name).to eq nil }
    end
  end

  describe '#print_name' do
    context 'when first_name and last_name are passed as parameter' do
      subject { described_class }
      specify { expect( subject.new("John","Smith").print_name ).to eq "John Smith" }

      it "prints name with first name and last name capitalized" do
        expect( subject.new("john","smith").print_name ).to eq "John Smith"
      end

      it "prints full name removing unwanted spaces in first_name and last_name" do
        expect( subject.new("j ohn","smith").print_name ).to eq "John Smith"
      end
    end

    context 'when first_name and last_name are assigned  seperately' do
      p1 = Person.new
      p1.first_name = 'Jane'
      p1.last_name = 'Doe'
      specify { expect( p1.print_name ).to eq "Jane Doe" }

      it "prints name with first name and last name capitalized" do
        expect( p1.print_name ).to eq "Jane Doe"
      end
    end

    context 'when only first_name is  assigned' do
      p1 = Person.new
      p1.first_name = 'Jane'
      specify { expect( p1.print_name ).to eq "Jane" }
    end

    context 'when only first_name is  assigned' do
      p1 = Person.new
      p1.last_name = 'Doe'
      specify { expect( p1.print_name ).to eq "Doe" }
    end
  end
end