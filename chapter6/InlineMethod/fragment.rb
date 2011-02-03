def get_rating
  @number_of_late_deliveries > 5 ? 2 : 1
end
