require 'rails_helper'

RSpec.describe Ator, type: :model do
  subject {
    described_class.new(
      nome: 'lorem lorem',
      email: 'lorem@5lorem.com',
      ano_nascimento: '2000'
    )
  }

  context 'Validate attributes' do
    it 'is valid with attributes' do
      expect(subject).to be_valid
    end

    it 'is invalid with attributes' do
      subject.nome = nil
      expect(subject).to_not be_valid
    end

    it 'invalid with negative date' do
      subject.ano_nascimento = '-2000'
      expect(subject).to_not be_valid
    end

    it 'valid with positive date' do
      subject.ano_nascimento = '2000'
      expect(subject).to be_valid
    end
  end

  context 'Validate unique EMAIL ' do
    it 'return valid with emails different' do
      ator = Ator.new(nome: 'lorem2', email: 'lorem2@lorem.com', ano_nascimento: '2000')
      expect(subject.email).to_not eq(ator.email)
    end
  end
end
