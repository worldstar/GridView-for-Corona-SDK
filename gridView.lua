	local widget = require("widget")
	local gridView = {}

	function gridView:new(gridX, gridY, photoArray, photoTextArray, columnNumber, paddingX, paddingY, photoWidth, photoHeight, gridListener)
		local currentX = gridX
		local currentY = gridY

		function onStarButtonRelease(event)
			local btId = event.target.id
			local index = 0
			-- print(btId)

			for i = 1, #photoArray do
				if(btId == "grid"..i) then
					index = i
					break
				end
			end

			gridListener(index)
		end			

		function drawGrid()
			for i = 1, #photoArray do
				local fontSize = 24

				gridView.gridObject = widget.newButton{
					id = "grid"..i,
					default = photoArray[i], --For Widget V2.0, change the default to defaultFile
			        left = currentX,
			        top = currentY,		
			        width = photoWidth, height = photoHeight,					
					onRelease = onStarButtonRelease
				}		

				local r = 0
				gridView.roundedRect = display.newRoundedRect( currentX, currentY + photoHeight - 35, photoWidth, 35, r )
				gridView.roundedRect:setFillColor( 55, 55, 55, 190 )	

				--Limit the label length
				--Determine the longest length of the label string
				local bestStringLength = photoWidth / (fontSize/2) - 1

				if(string.len(photoTextArray[i]) > bestStringLength) then
					photoTextArray[i] = string.sub( photoTextArray[i], 0, bestStringLength)
				end
				
				local textPosX = photoWidth/2 - (fontSize/2)*string.len(photoTextArray[i])/2
				gridView.textObject = display.newText( photoTextArray[i], currentX + textPosX, currentY + photoHeight - 33, native.systemFontBold, fontSize )
				gridView.textObject:setTextColor( 255,255,255 )				

				--Update the position of the next item
				currentX = currentX + photoWidth + paddingX

				if(i % columnNumber == 0) then
					currentX = gridX
					currentY = currentY + photoHeight + paddingY
				end		
			end
		end

		drawGrid()	
	end	

	return gridView