module CustomInitializers
  def hash_initializer(*attribute_names)
    define_method(:initialize) do |*args|
      data = args.first || {}
      attribute_names.each do |attribute_name|
        instance_variable_set "@#{attribute_name}", data[attribute_name]
      end
    end
  end
end

Class.send :include, CustomInitializers

class SearchCriteria
  attr_accessor :author_id, :publisher_id, :isbn
  hash_initializer :author_id, :publisher_id, :isbn
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
