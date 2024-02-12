# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  validates(:director_id, presence: true)
  validates(:title, uniqueness: true)

  #Movie belongs to a director
  #belongs_to(:name_that_we_want, class_name: "", foreign_key: "" )
  belongs_to( :director, class_name:"Director", foreign_key: "director_id" )

 # belongs_to( :director, foreign_key: "director_id" )

 # belongs_to( :director )

 # def director
  #  key = self.director_id

   # matching_set = Director.where({ :id => key })

    #the_one = matching_set.at(0)

    #return the_one
  #end



  
end
