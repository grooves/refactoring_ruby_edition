module AssertValidKeys
	def assert_valid_keys(*valid_keys)
		unknown_keys = keys - [valid_keys].flatten
		if unknown_keys.any?a
			raise(ArgumentError, "Unknown key(s): #{unknown_keys.join(", ")}")
		end
	end
end

Hash.send(:include, AssertValidKeys)

class Books
	def self.find(selector, hash={})
		hash[:joins] ||= []
		hash[:conditions] ||= ""
		sql = ["select * from books "]
		hash[:joins].each do |join_table|
			sql << "left outer join #{join_table} on "
			#sql << "books,#{join_table.to_s.chap}_id"
			sql << "books.#{join_table.to_s}_id"
			sql << " = #{join_table}.id "
		end
		sql << "where #{hash[:conditions]}" unless hash[:conditions].empty?
		sql << " limit 1" if selector == :first
    
		#connection.find(sql.join(" "))

		p "sql: #{sql}"
	end
end

Books.find(:all)
Books.find(:all, :conditions => "title like '%Voodoo Economics'")
Books.find(:all, :conditions => "authors.name = 'Jenny James'", :joins => [:authors])
Books.find(:first, :conditions => "authors.name = 'Jenny James'", :joins => [:authors])
