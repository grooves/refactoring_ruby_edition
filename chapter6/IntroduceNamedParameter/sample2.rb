class Books
	def self.find(selector, conditions="", *joins)
		sql = ["select * from books "]
		joins.each do |join_table|
			sql << "left outer join #{join_table} on "
			#sql << "books,#{join_table.to_s.chap}_id"
			sql << "books.#{join_table.to_s}_id"
			sql << " = #{join_table}.id "
		end
		sql << "where #{conditions}" unless conditions.empty?
		sql << " limit 1" if selector == :first
    
		#connection.find(sql.join(" "))

		p "sql: #{sql}"
	end
end

Books.find(:all)
Books.find(:all, "title like '%Voodoo Economics'")
Books.find(:all, "authors.name = 'Jenny James'", :authors)
Books.find(:first, "authors.name = 'Jenny James'", :authors)
