class PicturesController < ApplicationController

	before_filter :load_pictures  #this loads what is behind the :load_pictures method immediately, making it available to further methods
	

	def index
		@greeting = "Hello World"		
	end

	def show
		@picture = @pictures[params[:id].to_i]
	end

  def create
    #the following action creates a basic template, without having one already created
    render :text => "Saving a picture.  Url:  #{params[:url]}.  Title: #{params[:title]}.  Artist: #{params[:artist]}"
  end

  def new
    
  end


	def load_pictures
		@pictures = [
		{:title => "First Love: Horses, Majestic Horses",
		:artist => "Chief IronBone",
		:url => 'http://pcdn.500px.net/28653251/6d6075fad5647dffd251e779c6b3a37c6a70f2ac/4.jpg'
		},		
		{:title => "Second Love: A Mouse, A Cute Little Mouse",
		:artist => "Self-Portrait",
		:url => 'http://pcdn.500px.net/28643261/c0e80a2ff2213205ba272b3f8ea010eafe6e1594/4.jpg'
		},		

		{:title => "Thursday Love: Laura",
		:artist => "Picasso",
		:url => 'http://pcdn.500px.net/28643491/8c0e5d2da96aff94680bddc3d589749e8be06b6f/4.jpg'
		},		


		{:title => "Friday Love: Maserati Girl",
		:artist => "Maserati of Canada",
		:url => 'http://pcdn.500px.net/9107825/aefa8eb17e4e77fc0f97dca91eda08a37a33d661/4.jpg'
		},		


    {:title => "Chicks getting bashed by sheep",
    :artist => "Farmer John",
    :url => 'http://i.imgur.com/ULeQ8Uw.jpg'
    },    

		{:title => "Saturday Love:  SLS AMG - Wide Open for Bidness",
		:artist => "Mercedes-Benzito",
		:url => 'http://pcdn.500px.net/18648273/c001684f2397089830402a83e9b3260711f5a9e6/4.jpg'
		},		

		{:title => "Sunday Morning Drive Love:  Baby got back, and front, and Ferrari",
		:artist => "Ferrari of Canada",
		:url => 'http://pcdn.500px.net/1337978/34b90ecc16fcc4bd69c7adf7df844e8a5659d4cd/4.jpg'
		}		
		]
	end

end 


