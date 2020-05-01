require './lib/birthday'

describe Calculate do
  describe '#birthday' do
    it 'returns false if birthday does not equal current date' do
      birthday = (Date.today - 1).strftime("%d/%m")
      expect(subject.birthday?(birthday)).to eq false
    end

    it 'returns true if birthday equals current date' do
      birthday = Date.today.strftime("%d/%m")
      expect(subject.birthday?(birthday)).to eq true
    end
  end

  describe '#days_left' do

  end
end
