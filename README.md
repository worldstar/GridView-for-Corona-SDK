GridView-for-Corona-SDK
=======================

GridView for Corona SDK

This UI is used to show a GridView on the screen, which is sort of a photo album. 

It could show the figure as buttons, and labels on each figures.

In addition, the label length is adjusted when the string length is longer than the figure width.

You can control the GridView position, and how many columns are shown in each row.

Go ahead to apply this library in your project.

Only few line, you can show the GridView perfectly.

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


Note: If you use the Widget V2.0, please edit the gridView.lua and then change the default to defaultFile for the button widget.
