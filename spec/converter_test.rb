require_relative '../converter'  

# Test import
# converter = Converter.new(1)  
# puts converter.convert_int_to_ascii_char

RSpec.describe Converter do
    context 'Basic tests:' do
        it 'Input 1 should return A' do
            converter = described_class.new(1)
            expect(converter.convert_int_to_ascii_char).to eq("A")
        end
        
        it 'Input 20 should return T' do
            converter = described_class.new(20)
            expect(converter.convert_int_to_ascii_char).to eq("T")
        end

        it 'Input 26 should return Z' do
            converter = described_class.new(26)
            expect(converter.convert_int_to_ascii_char).to eq("Z")
        end

        it 'Input 100 should return CV' do
            converter = described_class.new(100)
            expect(converter.convert_int_to_ascii_char).to eq("CV")
        end

        it 'Input 1000 should return ALL' do
            converter = described_class.new(1000)
            expect(converter.convert_int_to_ascii_char).to eq("ALL")
        end
    end
end