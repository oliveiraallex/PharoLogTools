as yet unclassified
show: aString
	"self halt."
	"aString do: [ :a | Transcript show: (a contents asString ) ] ."

	Transcript show: aString contents; cr.
	
	"(aString asString at: 1) = $! ifTrue: [ Transcript show: aString; cr ]"