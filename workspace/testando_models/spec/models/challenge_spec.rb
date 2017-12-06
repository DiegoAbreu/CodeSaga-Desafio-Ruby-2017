require 'rails_helper'

describe Challenge, type: :model do
  describe "full_repo_name" do

    it 'returns a full repo name' do
      repo_name = "campuscode"
      challenge = Challenge.create(name: 'codesaga', description: 'ruby',
        code_points: 100, repo_name: 'campuscode')
      expect(challenge.full_repo_name).to eq "git@git.codesaga.com.br:codesaga/#{repo_name}"
    end

    it 'returns blank when there is no repo name present' do
      challenge = Challenge.create(name: 'codesaga', description: 'ruby',
        code_points: 100)
        expect(challenge.full_repo_name).to eq ''
    end
  end

  context 'validation' do

    it 'valid with name, description and code_points' do
      challenge = Challenge.create(name: 'codesaga', description: 'ruby',
        code_points: 100)
      expect(challenge).to be_valid
    end

    it 'invalid without name' do
      challenge = Challenge.create(name: '')
      expect(challenge.valid?).to eq false
      expect(challenge.errors.messages[:name])
      .to include "can't be blank"
    end

    it 'invalid without description' do
      challenge = Challenge.create(description: '')
      expect(challenge.valid?).to eq false
      expect(challenge.errors.messages[:description])
      .to include "can't be blank"
    end

    it 'invalid without code_points' do
      challenge = Challenge.create(code_points: '')
      expect(challenge.valid?).to eq false
      expect(challenge.errors.messages[:code_points])
      .to include "can't be blank"
    end

    it 'invalid without any data' do
      challenge = Challenge.new
      # voce pode validar um model assim
      expect(challenge).to_not be_valid
      # ou assim
      expect(challenge.valid?).to eq false
    end

    it 'code points must be a number' do
      challenge = Challenge.create(name: 'codesaga', description: 'ruby',
        code_points: "7x1")
      expect(challenge).to_not be_valid
      expect(challenge.errors.messages[:code_points])
      .to include "is not a number"
    end

    it 'invalid with code points any but a number' do
      challenge = Challenge.create(code_points: 'number')
      expect(challenge.errors.include?(:code_points)).to eq true
      expect(challenge.errors.messages[:code_points])
        .to include 'is not a number'
    end
    
  end
end
