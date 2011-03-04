class SearchCriteria
  attr_accessor :author_id, :publisher_id, :isbn

  def initialize(hash)
    @author_id = hash[:author_id]
    @publisher_id = hash[:publisher_id]
    @isbn = hash[:isbn]
  end

end

require 'rspec'

describe 'SearchCriteria' do
  before do
    @search_criteria = SearchCriteria.new :author_id => 123, :publisher_id => 678, :isbn => 999933332222
  end
  subject {@search_criteria}

  its(:author_id) { should == 123 }
  its(:publisher_id) { should == 678 }
  its(:isbn) { should == 999933332222 }
end
