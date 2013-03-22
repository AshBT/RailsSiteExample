class AddCopyrightedToPictures < ActiveRecord::Migration
  def change
    #adding a column to the database "pictures", with "copyrighted" at the column heading, and "boolean" as the type
    add_column :pictures, :copyrighted, :boolean   

    Picture.all.each do |picture|
      picture.copyrighted = true
      picture.save!
    end
  end
end
