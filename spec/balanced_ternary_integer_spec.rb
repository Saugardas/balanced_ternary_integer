require 'spec_helper'

RSpec.describe BalancedTernaryInteger do
  it 'has a version number' do
    expect(BalancedTernaryInteger::VERSION).not_to be nil
  end

  describe '.from_int' do
    context 'validation' do
      it { expect { described_class.from_int(nil).to raise_error(ArgumentError) } }
      it { expect { described_class.from_int('').to raise_error(ArgumentError) } }
      it { expect { described_class.from_int(1.0).to raise_error(ArgumentError) } }
      it { expect { described_class.from_int(10).not_to raise_error(ArgumentError) } }
    end

    context 'conversion' do
      it { expect(described_class.from_int(0)).to eq '0' }
      it { expect(described_class.from_int(5)).to eq '1TT' }
      it { expect(described_class.from_int(-5)).to eq 'T11' }
    end
  end

  describe '.to_int' do
    context 'validation' do
      it { expect { described_class.to_int(nil).to raise_error(ArgumentError) } }
      it { expect { described_class.to_int(0).to raise_error(ArgumentError) } }
      it { expect { described_class.to_int('-1').to raise_error(ArgumentError) } }
      it { expect { described_class.to_int('2').to raise_error(ArgumentError) } }
      it { expect { described_class.from_int('').not_to raise_error(ArgumentError) } }
      it { expect { described_class.from_int('T1').not_to raise_error(ArgumentError) } }
    end

    context 'conversion' do
      it { expect(described_class.to_int('0')).to eq 0 }
      it { expect(described_class.to_int('10T')).to eq 8 }
      it { expect(described_class.to_int('T11')).to eq -5 }
      it { expect(described_class.to_int('1TT0101010T11')).to eq 302611 }
    end
  end
end
