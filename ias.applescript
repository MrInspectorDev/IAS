(* Just a project I decided to do in my spare time.
Of course you can use IJS on your mac OS X but I wanted one with different features and specificly made for mac, 
windows version will come out soon with better features.*)

display alert "Press the Take SS Button to take a screenshot." buttons {"Cancel", "Take SS"}
say "You have taken a screen shot!"
property SS : 0
set SS to SS + 1
set picPath to ((POSIX path of (path to desktop)) & "IJS [Apple] - " & SS & ".png") as string
do shell script "screencapture -tjpg " & quoted form of picPath
