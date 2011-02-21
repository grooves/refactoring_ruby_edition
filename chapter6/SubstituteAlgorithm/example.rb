class Friend
  def found_friends(people)
    people.select do |person|
      %w(Don John Kent).include? person
    end
  end
end
