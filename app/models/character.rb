# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  #belongs_to(:name_that_we_want, class_name: "", foreign_key: "" )
  
  #Character belongs to a movie 
  belongs_to( :movie, class_name: "Movie", foreign_key: "movie_id" )

#  def movie
#    key = self.movie_id

#    matching_set = Movie.where({ :id => key })

#    the_one = matching_set.at(0)

#    return the_one
#  end

belongs_to( :actor )

 # def actor
  #  key = self.actor_id

  #  matching_set = Actor.where({:id => key})

   # the_one = matching_set.at(0)
  #end
end
