class Books
	def self.find(hash={})
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
		sql << " limit 1" if hash[:selector] == :first
    
		#connection.find(sql.join(" "))

		p "sql: #{sql}"
	end
end

Books.find
Books.find(:selector => :all, :conditions => "title like '%Voodoo Economics'")
Books.find(:selector => :first, :conditions => "authors.name = 'Jenny James'", :joins => [:authors])
