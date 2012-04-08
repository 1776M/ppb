class Name < ActiveRecord::Base

   attr_accessible :board, :email, :link

   validates :email,     :presence => true
     



end
