## we're going to create a database with pictures stored in it
## each record will be an instance of the Picture class 
## migrations create the field in the database

class Picture < ActiveRecord::Base  
  #activerecord is a part of rails that lets you interact with your database
  
  attr_accessible :title, :artist, :url #don't confuse this with accessor, this is the way of white-listing attributes, allowing mass assignment
  # in this case mass-assignment can be applied to :title and :artist
  
  # to create a method to add new stuff to the database
  validates :title, :presence => true
  validates :artist, :presence => true
  validates :url, :presence => true
  
end

