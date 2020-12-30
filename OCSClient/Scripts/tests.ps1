
$appPath = "..\bin\Debug\netcoreapp3.1\";

# Para no cargar el path indefinidamente
if ($env:Path -notlike "*"+$appPath+"*") {
	"No lo contiene"
	$env:Path += $appPath + ";" 
} else {
	"SIN MODIFICAR PATH"
}

<#
$commands = @(
	"/h2r-graphics/logo show",
	"/h2r-graphics/logo hide",
	"/h2r-graphics/clear"

)

foreach ($c in $commands)  {
	OCSClient.exe $c
	start-sleep 3
}


exit
#>
OCSClient.exe /h2r-graphics/logo show

start-sleep 5

OCSClient.exe /h2r-graphics/logo hide
start-sleep 5

OCSClient.exe /h2r-graphics/logo show

start-sleep 5



# Clear all graphics (OSC Message)
#Path: /h2r-graphics/clear

OCSClient.exe /h2r-graphics/clear

# Lower Thirds Show
#Path: /h2r-graphics/lower-third
#String: 1 (replace with number of lower third you want to show)
#Lower Thirds Hide

OCSClient.exe /h2r-graphics/lower-third "Lower hide"

#Type: OSC String

#Path: /h2r-graphics/lower-third
#String: hide
OCSClient.exe /h2r-graphics/lower-third hide


# Ticker Show
#Type: OSC String
#Path: /h2r-graphics/ticker
#String: show
OCSClient.exe /h2r-graphics/ticked hide

<#
Ticker Hide

Type: OSC String

Path: /h2r-graphics/ticker

String: hide
Timer Show

Type: OSC String

Path: /h2r-graphics/timer

String: show
Timer Hide

Type: OSC String

Path: /h2r-graphics/timer

String: hide
Custom Up Timer

Type: OSC String

Path: /h2r-graphics/timer-custom-up

String: hh:mm (e.g. 01:00 = 1 hour timer)
Custom Down Timer

Type: OSC String

Path: /h2r-graphics/timer-custom-down

String: hh:mm (e.g. 00:01 = 1 minute timer)
Custom Down to Time of Day

Type: OSC String

Path: /h2r-graphics/timer-custom-down-time-of-day

String: hh:mm (e.g. 13:00 = Count down to 13:00)
Current Time of Day

Type: OSC String

Path: /h2r-graphics/timer-current-time
Stopwatch

Type: OSC String

Path: /h2r-graphics/stopwatch
Pause time

Type: OSC String

Path: /h2r-graphics/timer

String: pause
Resume time

Type: OSC String

Path: /h2r-graphics/timer

String: resume
Set pre-timer custom message

Type: OSC String

Path: /h2r-graphics/timer-pre-message

String: Message you want to set
Logo Show

Type: OSC String

Path: /h2r-graphics/logo

String: show
Logo Hide

Type: OSC String

Path: /h2r-graphics/logo

String: hide
Message Show

Type: OSC String

Path: /h2r-graphics/message

String: show
Message Hide

Type: OSC String

Path: /h2r-graphics/message

String: hide
Display Custom Message

Type: OSC String

Path: /h2r-graphics/message

String: Message that you want to show
Break Show

Type: OSC String

Path: /h2r-graphics/break

String: show
Break Hide

Type: OSC String

Path: /h2r-graphics/break

String: hide
Chat Hide

Type: OSC String

Path: /h2r-graphics/chat

String: hide
Image Show Next

Type: OSC String

Path: /h2r-graphics/image

String: next
Image Show Previous

Type: OSC String

Path: /h2r-graphics/image

String: previous
Image Show Specific

Type: OSC String

Path: /h2r-graphics/image

String: 1 (Where '1' will show the first image)
Image Hide

Type: OSC String

Path: /h2r-graphics/image

String: hide
Score Show

Type: OSC String

Path: /h2r-graphics/score

String: show
Score Hide

Type: OSC String

Path: /h2r-graphics/score

String: hide
Increase Team 1 score by 10 points

Type: OSC String

Path: /h2r-graphics/score-team-1

String: 10
Decrease Team 2 score by 5 points

Type: OSC String

Path: /h2r-graphics/score-team-2

String: -5 
#>