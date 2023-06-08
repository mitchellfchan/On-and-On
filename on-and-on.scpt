repeat
	
	set myhour to get the (hours of (current date))
	
	-- play between 9pm and 5am every day
	
	delay 1
	
	-- delay so we dont burn up the processor
	
	if myhour ≥ 12 or myhour < 5 then
		
		if application "Discord" is not running then
			tell application "Discord"
				activate
			end tell
		end if
		
		tell application "Spotify"
			
			if application "Spotify" is not running then
				activate
			end if
			
			set repeating to true
			
			-- "Like a G6" by Far East Movement.~\footnotemark[1]~	
			
			play track "spotify:track:4DvhkX2ic4zWkQeWMwQ2qf" in context "spotify:album:1TuKgkCGIxiIns9Bc5XKRC"
			
			set sound volume to 0
			
			set x to 214
			
			-- 214 is Almost the duration of Like A G6. We don't wanna get to the ~end~ cause Spotify might throw a "commercial" which throws Applescript into a tailspin. This could be overcome with some tricky code, aka nested "trys", but I found a hack which is to just ~quit~ Spotify and restart, as Spotify doesn't seem to throw commercials the first thing out of the gate. It's a bit unglamorous, though makes for a pretty small script. :/
			
			delay x
			
		end tell
		
	end if
	
end repeat
