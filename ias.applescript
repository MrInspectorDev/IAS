(* Just a project I decided to do in my spare time.
Of course you can use IJS on your mac OS X but I wanted one with different features and specificly made for mac, 
windows version will come out soon with better features.*)

display dialog "IAS - InstantAppleScreen" buttons {"Cancel", "Take SS"} with title "IAS" default button 2
display dialog "[IAS] - Confirm screenshot?" buttons {"Cancel", "Confirm SS"} with title "IAS" default button 2
property S : 0
set S to S + 1
set picPath to ((POSIX path of (path to desktop)) & "IAS - SS #" & S & ".png") as string
do shell script "screencapture -tjpg " & quoted form of picPath
