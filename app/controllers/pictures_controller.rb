class PicturesController < ApplicationController

	before_filter :load_pictures  #this loads what is behind the :load_pictures method immediately, making it available to further methods
	
	@pictures = Picture.all  #instantiate the database and assign it to the @pictures variable
  
	def index
    @picture = Picture.all					
	end

  def edit
    @picture = Picture.find params[:id]     
  end

  def destroy
    @picture = Picture.find params[:id]
    destroyed_picture = @picture.destroy()
    if destroyed_picture     
      redirect_to pictures_path
    else
      redirect_to picture_path(@picture.id)
    end
  end

  def update
    @picture = Picture.find(params[:id])  #gets a single picture instance from the Picture database
    if @picture.update_attributes(params[:picture])  #this essentially polls
      redirect_to @picture
    else
      redirect_to pictures_path
    end
  end

	def show  #check out the routes file to really understand how this is working.  It essentially grabs the html associated with the ID
		@picture = Picture.find params[:id]  #use the find method to get the object with the certain ID from the database
	end

  def create
    #the following line will create a new entry in the database #create returns an instance of the variable, not a boolean
    @picture = Picture.new(params[:picture])
    
    if @picture.save #this allows you to save the information that has been entered 
      redirect_to pictures_path    #redirect to somewhere when you're successful  #pictures_path is the route for pictures
    else
      flash.now[:error] = @picture.errors  
      render :new   #render jumps to another method in the same file
    end
  end

  def new
    @picture = Picture.new    #create a new Picture object    
  end

	def load_pictures
		
		# @pictures = [
		# {:title => "First Love: Horses, Majestic Horses",
		# :artist => "Chief IronBone",
		# :url => 'http://pcdn.500px.net/28653251/6d6075fad5647dffd251e779c6b3a37c6a70f2ac/4.jpg'
		# },		
# 
		# {:title => "Second Love: A Mouse, A Cute Little Mouse",
		# :artist => "Self-Portrait",
		# :url => 'http://pcdn.500px.net/28643261/c0e80a2ff2213205ba272b3f8ea010eafe6e1594/4.jpg'
		# },		
# 
		# {:title => "Thursday Love: Laura",
		# :artist => "Picasso",
		# :url => 'http://pcdn.500px.net/28643491/8c0e5d2da96aff94680bddc3d589749e8be06b6f/4.jpg'
		# },		
# 
		# {:title => "Friday Love: Maserati Girl",
		# :artist => "Maserati of Canada",
		# :url => 'http://pcdn.500px.net/9107825/aefa8eb17e4e77fc0f97dca91eda08a37a33d661/4.jpg'
		# },		
# 
    # {:title => "Chicks getting bashed by sheep",
    # :artist => "Farmer John",
    # :url => 'http://i.imgur.com/ULeQ8Uw.jpg'
    # },    
# 
		# {:title => "Saturday Love:  SLS AMG - Wide Open for Bidness",
		# :artist => "Mercedes-Benzito",
		# :url => 'http://pcdn.500px.net/18648273/c001684f2397089830402a83e9b3260711f5a9e6/4.jpg'
		# },		
# 
		# {:title => "Sunday Morning Drive Love:  Baby got back, and front, and Ferrari",
		# :artist => "Ferrari of Canada",
		# :url => 'http://pcdn.500px.net/1337978/34b90ecc16fcc4bd69c7adf7df844e8a5659d4cd/4.jpg'
		# }		
		# ]	
		
	end

end 