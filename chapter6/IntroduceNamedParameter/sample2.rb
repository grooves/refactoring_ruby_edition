class Books
	def self.find(selector, conditions="", *joins)
		sql = ["select * from books"]
		joins.each do |join_table|
			sql << "left outer join #{join_table} on"
			sql << "books,#{join_table.to_s.chap}_id"
			sql << " = #{join_table}.id"
		end
		sql << "where #{conditions}" unless conditions.empty?
		sql << "limit 1" if selector == :first
    
		connection.find(sql.join(" ")
	end
end
