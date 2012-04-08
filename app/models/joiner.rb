class Joiner < ActiveRecord::Base

   attr_accessible :board, :email, :link

   validates :board,     :presence => true
   validates :email,     :presence => true
   validates :link,     :presence => true

end
