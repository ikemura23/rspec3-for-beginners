require_relative 'message_filter'
describe MessageFilter do
  it 'detects message with NG world' do
    filter = MessageFilter.new('foo')
    expect(filter.detect?('hello from foo')).to eq true
  end
  it 'dose not detect message without NG word' do
    filter = MessageFilter.new('foo')
    expect(filter.detect?('hello, world!')).to eq false
  end
end