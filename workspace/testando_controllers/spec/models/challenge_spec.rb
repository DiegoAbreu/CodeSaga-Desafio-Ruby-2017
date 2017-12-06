require 'rails_helper'

describe Challenge, type: :model do
  describe '#full_repo_name' do
    it 'returns a full repo name' do
      repo_name = 'testando_models'
      challenge = Challenge.new(repo_name: repo_name)
      expect(challenge.full_repo_name)
        .to eq "git@git.codesaga.com.br:codesaga/#{repo_name}"
    end

    it 'returns blank when there is no repo name present' do
      expect(Challenge.new.full_repo_name).to eq ""
    end
  end

  context 'validation' do
    it 'valid with name, description and code_points' do
      challenge = Challenge.new(name:        'testando model',
                                description: 'Sua vez de testar',
                                code_points: 45)
      expect(challenge).to be_valid
    end

    it 'invalid without name' do
      challenge = Challenge.new(description: 'Sua vez de testar',
                                code_points: 45)
      expect(challenge).not_to be_valid
    end

    it 'invalid without description' do
      challenge = Challenge.new(name: 'testando models',
                                code_points: 45)
      expect(challenge).not_to be_valid
    end

    it 'invalid without code_points' do
      challenge = Challenge.new(name: 'testando models',
                                description: 'Sua vez de testar')
      expect(challenge).not_to be_valid
    end

    it 'invalid without any data' do
      challenge = Challenge.new
      # voce pode validar um model assim
      expect(challenge).to_not be_valid
      # ou assim
      expect(challenge.valid?).to eq false
    end

    it 'code points must be a number' do
      challenge = create_challenge(code_points: 45)
      expect(challenge.errors).to_not include :code_points
    end

    it 'invalid with code points any but a number' do
      challenge = create_challenge(code_points: 'number')
      expect(challenge.errors.include?(:code_points)).to eq true
      expect(challenge.errors.messages[:code_points])
        .to include 'is not a number'
    end

    def create_challenge(name: 'testando models',
                         description: 'Sua vez de testar',
                         code_points: 45)
      Challenge.create(name:        name,
                    description: description,
                    code_points: code_points)
    end
  end
end
