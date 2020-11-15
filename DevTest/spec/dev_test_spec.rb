require_relative '../lib/dev_test'

RSpec.describe 'DevTest behavor' do
    let(:target) {DevTest.new}

    it 'should do return "abc"' do
        expect(target.return_abc).to eq 'abc'
    end
end