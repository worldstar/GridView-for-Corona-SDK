	------------------
	-- GridView Objects
	------------------		
	--Include the gridView library
	local gridView = require("gridView")

	--Data
	local photoArray = {"assets/pic1.png","assets/pic2.png","assets/pic3.png","assets/pic4.png","assets/pic5.png"}
	local photoTextArray = {"pic1","pic2","pic3","pic4","pic5  Long Text Test"}

	--Process the event when user click on the grid
	local function gridListener(index)
		print("You select item "..index)
	end
	
	--Initialize the starView object. The parameters are the gridX, gridY, photoArray, photoTextArray, columnNumber, paddingX, paddingY, photoWidth, photoHeight, gridListener.
	gridView:new(50, 100, photoArray, photoTextArray, 2, 10, 20, 214, 156, gridListener)