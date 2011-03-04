class SearchCriteria
  attr_accessor :author_id, :publisher_id, :isbn

  def initialize(author_id, publisher_id, isbn)
    @author_id = author_id
    @publisher_id = publisher_id
    @isbn = isbn
  end

end

require 'rspec'

describe 'SearchCriteria' do
  before do
    @search_criteria = SearchCriteria.new 123, 678, 999933332222
  end
  subject {@search_criteria}

  its(:author_id) { should == 123 }
  its(:publisher_id) { should == 678 }
  its(:isbn) { should == 999933332222 }
end
