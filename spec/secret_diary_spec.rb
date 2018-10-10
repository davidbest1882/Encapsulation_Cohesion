require 'secret_diary'

describe SecretDiary do

  it 'sees diary as an instance of SecretDiary' do
    expect(subject).to be_instance_of(SecretDiary)
  end

  it 'should return true if the diary is locked' do
    expect(subject.locked).to eq true
  end

  it 'should expect add_entry to raise an error' do
    expect{ subject.add_entry }.to raise_error "Diary is locked"
  end

  it 'should expect get_entries to raise an error' do
    expect{ subject.get_entries }.to raise_error "Diary is locked"
  end

  # it 'should respond to unlock' do
  #   expect(subject).to respond_to(:unlock)
  # end

#  it { is_expected.to respond_to(:unlock) }

  it 'should unlock diary' do
    expect(subject.unlock).to eq false
  end

end
