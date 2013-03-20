class CreatePictures < ActiveRecord::Migration
  ###create_table is an ActiveRecord method
  ## this migration has an up method and a down method
  ## up means that we're creating more stuff in our database
  ## down means to undo whatever the up does
  
  def up
    create_table :pictures do |t|
      t.string :artist        ###creates a database with the field :artist of 'type' string
      t.string :title
      t.string :url
    end
  end

  def down
    
  end
end
