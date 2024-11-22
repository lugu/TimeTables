"
I am the trait a type of question shall implement to be played by a TTGame.
"
Trait {
	#name : 'TTTQuestion',
	#category : 'TimeTables',
	#package : 'TimeTables'
}

{ #category : 'answers' }
TTTQuestion >> answers [
	"Returns 3 possible TTAnswer"
	self notImplemented
]

{ #category : 'answers' }
TTTQuestion >> problemStatement [
	"Returns the question in the form of a string."
	self notImplemented
]

{ #category : 'answers' }
TTTQuestion >> response: anAnswer [
	"Returns true if the answer is correct."
	self notImplemented
]
