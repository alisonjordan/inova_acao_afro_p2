require 'rails_helper'

RSpec.describe Log, type: :model do
  context 'Validate attributes comment_id in log' do
    it 'Valid comment with comment' do
      log = Log.new
      log.comentario_id = 10
      expect(log).to be_valid
    end
  end
end
