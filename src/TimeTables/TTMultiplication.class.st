"
I represents a multiplication to learn. I can generate correct and incorrect answers.
I know how to recognize a correct answer with `response:`.
Once I have received a correct response with `response:` my `success` value is `true`.
"
Class {
	#name : 'TTMultiplication',
	#superclass : 'Object',
	#traits : 'TTTQuestion',
	#classTraits : 'TTTQuestion classTrait',
	#instVars : [
		'x',
		'y'
	],
	#category : 'TimeTables',
	#package : 'TimeTables'
}

{ #category : 'answers' }
TTMultiplication >> answers [
	"I return some TTAnswer different from x * y"
	| incorrectAnswers |
	incorrectAnswers := (TTGame numberOfAnswers - 1) timesCollect: [ self incorrectAnswer ].
	^ (incorrectAnswers copyWith: self correctAnswer) shuffle
]

{ #category : 'answers' }
TTMultiplication >> correctAnswer [
	"I return a TTAnswer with x * y"
	^ TTAnswer new response: (x * y) asString
]

{ #category : 'answers' }
TTMultiplication >> incorrectAnswer [
	"I return a TTAnswer different from x * y"
	| noise answer |
	noise := 3 timesCollect: [ (-1 to: 1) atRandom].
	answer := (x + noise at: 1) * ( y + noise at: 2) + noise at:3.
	^ (answer = (x * y)) ifTrue: [self incorrectAnswer.] ifFalse: [ TTAnswer new response: answer asString ].
]

{ #category : 'accessing' }
TTMultiplication >> problemStatement [
	^ 'How much is: ', x asString, '*', y asString
]

{ #category : 'answers' }
TTMultiplication >> response: anAnswer [
	^ self correctAnswer = anAnswer
]

{ #category : 'accessing' }
TTMultiplication >> x [

	^ x
]

{ #category : 'accessing' }
TTMultiplication >> x: anObject [

	x := anObject
]

{ #category : 'accessing' }
TTMultiplication >> y [

	^ y
]

{ #category : 'accessing' }
TTMultiplication >> y: anObject [

	y := anObject
]
