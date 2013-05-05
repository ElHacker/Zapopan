require 'spec_helper'

describe Book do
  describe '.get_open_library_data' do

    it 'should return a open library book' do
      Book.get_open_library_data("0451526538").should_not be_nil
    end

    it 'should return nil when no book has been found' do
      Book.get_open_library_data("").should be_nil
    end

  end
end
