-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
display.setDefault( "background", 125/255, 0/255, 200/255 )




local number = display.newImageRect( "buttons.png", 60, 60 )
number.x = 150
number.y = 250
number.id = "answer button"

local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 180, 100, 70 )
answerTextField.id = "answer textField"

print( "Pick any positive or negative integer: " )

function numberTouch(event)

		local numberToGuess=tonumber(answerTextField.text)
	
	if numberToGuess <0 then
	    print( "negative" .. tostring(numberToGuess) )
	    local negative =  display.newText( "Number is Negative", display.contentCenterX, display.contentCenterY + 150, native.systemFont, 18 )
	    negative: setFillColor  (1,0,0)
	else 
		print("positive" .. tostring(numberToGuess) )
		local positive = display.newText( "Number Is Positive", display.contentCenterX, display.contentCenterY + 150, native.systemFont, 18 )
	    positive: setFillColor (0,1,0)
	end
	print("Do again")
end

print( "Program done." )

number:addEventListener( 'touch', numberTouch)