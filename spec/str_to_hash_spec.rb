require 'spec_helper'


describe StrToHash do
  hash1 = {'foo'=>'bar', 'fizz'=>'bazz', 'hoge'=>'fuga'}
  str1 = hash1.to_s

  context "success case" do
    it 'should send back HashClass' do
      expect(str1.to_h).to be_a_kind_of(Hash)
    end

    it 'should hash size is same' do
      expect(str1.to_h.size).to eq(hash1.size)
    end
  end

  context 'brank case("{}")' do
    hash_brank = {}
    str_brank = hash_brank.to_s
    it 'should send back hash' do
      expect(hash_brank.to_h).to be_a_kind_of(Hash)
    end

    it 'should hash size is same' do
      expect(str_brank.to_h.size).to eq(hash_brank.size)
    end
  end

  context "failure case" do
    it 'Unsupport format' do
      expect{ "['foo'=>'bar', 'fizz'=>'bazz']".to_h }.to raise_error(ArgumentError)
    end
  end
end
