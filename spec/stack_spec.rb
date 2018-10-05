require 'spec_helper'
RSpec.describe Stack  do
    let(:stack) { Stack.new }

    describe "#push" do
        subject { stack.push 1 }
        it{ expect(subject).to eq stack  }
    end

    describe "#length" do
        subject { stack.length }
        context "１をpush済みのstack" do
            before  { stack.push 1 }
            it { expect((subject)).to eq 1  }
        end
        context '１と５をpush済みのstack' do
          before do
            stack.push 1
            stack.push 5
          end
          it { expect(subject).to eq 2}
        end
    end
end
